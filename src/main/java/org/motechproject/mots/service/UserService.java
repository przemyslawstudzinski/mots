package org.motechproject.mots.service;

import java.text.MessageFormat;
import java.util.UUID;
import org.apache.commons.lang3.StringUtils;
import org.motechproject.mots.constants.DefaultPermissions;
import org.motechproject.mots.domain.security.User;
import org.motechproject.mots.domain.security.UserPermission;
import org.motechproject.mots.domain.security.UserRole;
import org.motechproject.mots.dto.UserProfileDto;
import org.motechproject.mots.exception.EntityNotFoundException;
import org.motechproject.mots.exception.MotsException;
import org.motechproject.mots.mapper.UserMapper;
import org.motechproject.mots.repository.PermissionRepository;
import org.motechproject.mots.repository.RoleRepository;
import org.motechproject.mots.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserService {

  @Autowired
  private UserRepository userRepository;

  @Autowired
  private RoleRepository roleRepository;

  @Autowired
  private PermissionRepository permissionRepository;

  private UserMapper userMapper = UserMapper.INSTANCE;

  public User getUserByUserName(String userName) {
    return userRepository.findOneByUsername(userName).orElseThrow(() ->
        new EntityNotFoundException("User with username: {0} not found", userName));
  }

  @PreAuthorize(DefaultPermissions.HAS_MANAGE_USERS_ROLE)
  public Iterable<User> getUsers() {
    return userRepository.findAll();
  }

  /**
   * Finds users matching all of the provided parameters. If there are no parameters, return all
   * users.
   */
  @PreAuthorize(DefaultPermissions.HAS_MANAGE_USERS_ROLE)
  public Page<User> searchUsers(String username, String email, String name, String role,
      Pageable pageable) throws IllegalArgumentException {
    return userRepository.search(username, email, name, role, pageable);
  }

  /**
   * Returns UserRoles.
   */
  @PreAuthorize(DefaultPermissions.HAS_MANAGE_USERS_ROLE)
  public Iterable<UserRole> getRoles() {
    return roleRepository.findAll();
  }

  /**
   * Returns UserPermissions.
   */
  @PreAuthorize(DefaultPermissions.HAS_MANAGE_USERS_ROLE)
  public Iterable<UserPermission> getPermissions() {
    return permissionRepository.findAll();
  }

  @PreAuthorize(DefaultPermissions.HAS_MANAGE_USERS_ROLE)
  public UserRole getRole(UUID id) {
    return roleRepository.findById(id).orElseThrow(() ->
        new EntityNotFoundException("Role with id: {0} not found", id.toString()));
  }

  /**
   * Saves a UserRole. Checks if role has id assigned (ie. if it is an update action),
   * if not it checks for name uniqueness. If the name is not unique it throws MotsException.
   *
   * @param role UserRole to be created or updated.
   * @throws MotsException if trying to create a new role with already existing name.
   * @return saved UserRole
   */
  @PreAuthorize(DefaultPermissions.HAS_MANAGE_USERS_ROLE)
  public UserRole saveRole(UserRole role) {
    roleRepository.findByName(role.getName()).ifPresent(r -> {
      if (role.getId() == null || !role.getId().equals(r.getId())) {
        throw new MotsException(MessageFormat.format("The role with {0} name already exists. "
        + "Change the name.", r.getName()));
      }
    });
    return roleRepository.save(role);
  }

  @PreAuthorize(DefaultPermissions.HAS_MANAGE_USERS_ROLE)
  public Page<UserRole> searchRoles(String name, Pageable pageable)
      throws IllegalArgumentException {
    return roleRepository.search(name, pageable);
  }

  @PreAuthorize(DefaultPermissions.HAS_MANAGE_USERS_ROLE)
  public User getUser(UUID id) {
    return userRepository.findById(id).orElseThrow(() ->
        new EntityNotFoundException("User with id: {0} not found", id.toString()));
  }

  /**
   * Save User with new encoded password (if it's not blank).
   *
   * @param user User to be created.
   * @return saved User
   */
  @PreAuthorize(DefaultPermissions.HAS_MANAGE_USERS_ROLE)
  public User saveUser(User user, boolean encodeNewPassword) {
    if (encodeNewPassword) {
      String newPasswordEncoded = new BCryptPasswordEncoder().encode(user.getPassword());
      user.setPassword(newPasswordEncoded);
    }

    return userRepository.save(user);
  }

  /**
   * Create User with new encoded password.
   *
   * @param user User to be created.
   * @return created User
   */
  @PreAuthorize(DefaultPermissions.HAS_MANAGE_USERS_ROLE)
  public User registerNewUser(User user) {

    String newPasswordEncoded = new BCryptPasswordEncoder().encode(user.getPassword());
    user.setPassword(newPasswordEncoded);

    return userRepository.save(user);
  }

  /**
   * Save User Profile with new encoded password (if it's not blank).
   *
   * @param userProfileDto User Profile to be updated.
   * @return saved User
   */
  public User editUserProfile(UUID userId, final UserProfileDto userProfileDto) {
    User existingUser = getUser(userId);
    final boolean encodeNewPassword = !StringUtils.isEmpty(userProfileDto.getPassword());

    if (encodeNewPassword) {
      changeUserPassword(existingUser.getUsername(),
          userProfileDto.getNewPassword(), userProfileDto.getPassword());
    }
    userMapper.updateFromUserProfileDto(userProfileDto, existingUser);

    return userRepository.save(existingUser);
  }

  /**
   * Updates user's password.
   *
   * @param username of user which password is about to change.
   * @param newPassword is new password value for user.
   * @param currentPassword is current user's password.
   */
  public void changeUserPassword(String username, String newPassword, String currentPassword) {
    User user = getUserByUserName(username);

    if (!passwordsMatch(currentPassword, user.getPassword())) {
      throw new IllegalArgumentException("Current password is incorrect.");
    }

    String newPasswordEncoded = new BCryptPasswordEncoder().encode(newPassword);
    user.setPassword(newPasswordEncoded);
    userRepository.save(user);
  }

  private boolean passwordsMatch(String oldPassword, String currentPasswordEncoded) {
    return new BCryptPasswordEncoder().matches(oldPassword, currentPasswordEncoded);
  }
}
