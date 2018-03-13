import _ from 'lodash';
import React, { Component } from 'react';
import PropTypes from 'prop-types';
import { reduxForm, formValueSelector } from 'redux-form';
import { connect } from 'react-redux';
import { View } from 'react-native';
import { Select } from 'react-native-chooser';
import { CheckBox } from 'react-native-elements';

import FormField from './FormField';
import { fetchLocations } from '../actions';
import {
  clearFields,
  untouchFields,
  getSelectableLocations,
  getAttributesForSelect,
  getAttributesForSelectWithClearOnChange,
  getAttributesForInput,
  getAttributesForYOB,
} from '../utils/form-utils';
import Button from './Button';
import styles from '../styles/formsStyles';
import Spinner from './Spinner';

export const CHW_FORM_NAME = 'HealthWorkersForm';
const FIELDS = {
  chwId: {
    label: 'CHW Id',
    required: true,
    getDynamicAttributes: ({ isChwIdDisabled }) => ({
      editable: !isChwIdDisabled,
    }),
    getAttributes: () => getAttributesForInput(),
  },
  firstName: {
    label: 'First Name',
    required: true,
    getAttributes: () => getAttributesForInput(),
  },
  secondName: {
    label: 'Surname',
    required: true,
    getAttributes: () => getAttributesForInput(),
  },
  otherName: {
    label: 'Other Name',
    getAttributes: () => getAttributesForInput(),
  },
  yearOfBirth: {
    label: 'Year of Birth',
    type: Select,
    getSelectOptions: () => {
      const values = [{ id: '', name: 'Click to Select' }];
      for (let year = (new Date()).getFullYear(); year > 1899; year -= 1) {
        values.push({ id: year, name: year.toString() });
      }
      return {
        values,
        displayNameKey: 'name',
        valueKey: 'id',
      };
    },
    getAttributes: input => getAttributesForYOB(input, CHW_FORM_NAME, 'age'),
  },
  age: {
    label: 'Age',
    getAttributes: () => getAttributesForInput(),
    getDynamicAttributes: ({ yearOfBirth }) => ({
      editable: false,
      hidden: !yearOfBirth,
    }),
  },
  gender: {
    type: Select,
    label: 'Gender',
    required: true,
    getSelectOptions: () => ({
      values: ['Male', 'Female'],
    }),
    getAttributes: input => (getAttributesForSelect(input)),
  },
  literacy: {
    type: Select,
    label: 'Literacy',
    getSelectOptions: () => ({
      values: ['Can read and write', 'Cannot read and write', 'Can only read'],
    }),
    getAttributes: input => (getAttributesForSelect(input)),
  },
  educationLevel: {
    type: Select,
    label: 'Educational Level',
    getSelectOptions: () => ({
      values: ['Primary', 'Secondary', 'Higher', 'None'],
    }),
    getAttributes: input => (getAttributesForSelect(input)),
  },
  phoneNumber: {
    label: 'Phone Number',
    required: true,
    getAttributes: () => getAttributesForInput(),
  },
  districtId: {
    type: Select,
    label: 'District',
    required: true,
    getSelectOptions: ({ availableLocations }) => ({
      values: availableLocations,
      displayNameKey: 'name',
      valueKey: 'id',
    }),
    getAttributes: (input, { availableLocations }) => (
      getAttributesForSelectWithClearOnChange(
        input,
        availableLocations,
        CHW_FORM_NAME,
        'chiefdomId',
        'facilityId',
        'communityId',
      )
    ),
  },
  chiefdomId: {
    type: Select,
    label: 'Chiefdom',
    required: true,
    getSelectOptions: ({ availableLocations, districtId }) => ({
      values: getSelectableLocations(
        'chiefdoms',
        availableLocations,
        districtId,
      ),
      displayNameKey: 'name',
      valueKey: 'id',
    }),
    getAttributes: (input, { availableLocations, districtId }) => (
      getAttributesForSelectWithClearOnChange(
        input,
        getSelectableLocations(
          'chiefdoms',
          availableLocations,
          districtId,
        ),
        CHW_FORM_NAME,
        'facilityId',
        'communityId',
      )
    ),
    getDynamicAttributes: ({ districtId }) => ({
      hidden: !districtId,
    }),
  },
  facilityId: {
    type: Select,
    label: 'Facility',
    required: true,
    getSelectOptions: ({ availableLocations, districtId, chiefdomId }) => ({
      values: getSelectableLocations(
        'facilities',
        availableLocations,
        districtId,
        chiefdomId,
      ),
      displayNameKey: 'name',
      valueKey: 'id',
    }),
    getAttributes: (input, { availableLocations, districtId, chiefdomId }) => (
      getAttributesForSelectWithClearOnChange(
        input,
        getSelectableLocations(
          'facilities',
          availableLocations,
          districtId,
          chiefdomId,
        ),
        CHW_FORM_NAME,
        'communityId',
      )
    ),
    getDynamicAttributes: ({ chiefdomId }) => ({
      hidden: !chiefdomId,
    }),
  },
  communityId: {
    type: Select,
    label: 'Community',
    required: true,
    getSelectOptions: ({
      availableLocations, districtId, chiefdomId, facilityId,
    }) => ({
      values: getSelectableLocations(
        'communities',
        availableLocations,
        districtId,
        chiefdomId,
        facilityId,
      ),
      displayNameKey: 'name',
      valueKey: 'id',
    }),
    getAttributes: (input, {
      availableLocations, districtId, chiefdomId, facilityId,
    }) => (
      getAttributesForSelect(
        input,
        getSelectableLocations(
          'communities',
          availableLocations,
          districtId,
          chiefdomId,
          facilityId,
        ),
      )
    ),
    getDynamicAttributes: ({ facilityId }) => ({
      hidden: !facilityId,
    }),
  },
  hasPeerSupervisor: {
    type: CheckBox,
    label: 'Peer Supervisor',
    getAttributes: input => (
      {
        title: '',
        checked: input.value === true,
        onPress: () => {
          input.onChange(!input.value);
        },
      }
    ),
    nonBorderField: true,
  },
  preferredLanguage: {
    type: Select,
    label: 'Preferred Language',
    required: true,
    getSelectOptions: () => ({
      values: ['English', 'Krio', 'Limba', 'Susu', 'Temne', 'Mende'],
    }),
    getAttributes: input => (getAttributesForSelect(input)),
  },
};

class HealthWorkersForm extends Component {
  constructor(props) {
    super(props);

    this.renderField = this.renderField.bind(this);
  }

  componentWillMount() {
    clearFields(CHW_FORM_NAME, ...(_.keys(FIELDS)));
    untouchFields(CHW_FORM_NAME, ...(_.keys(FIELDS)));
    this.props.fetchLocations();
  }

  renderField(fieldConfig, fieldName) {
    return (
      <FormField
        key={fieldName}
        fieldName={fieldName}
        fieldConfig={fieldConfig}
        availableLocations={this.props.availableLocations}
        districtId={this.props.districtId}
        chiefdomId={this.props.chiefdomId}
        facilityId={this.props.facilityId}
        isChwIdDisabled={this.props.isChwIdDisabled}
        yearOfBirth={this.props.yearOfBirth}
      />
    );
  }

  renderButton() {
    if (this.props.loading) {
      return (
        <View style={styles.buttonContainer}>
          <Spinner size="small" />
        </View>
      );
    }
    const { handleSubmit } = this.props;

    return (
      <View style={styles.buttonContainer}>
        <Button
          onPress={handleSubmit(this.props.onSubmit)}
          iconName="check"
          iconColor="#FFF"
          buttonColor="#337ab7"
        >
                Submit
        </Button>
        <Button
          onPress={() => this.props.onSubmitCancel()}
          iconName="ban"
          iconColor="#FFF"
          buttonColor="grey"
          marginLeft={10}
        >
                Cancel
        </Button>
      </View>
    );
  }

  render() {
    return (
      <View style={styles.formAddContainer}>
        { _.map(FIELDS, this.renderField) }
        {this.renderButton()}
      </View>
    );
  }
}

function isAgeLowerThan15(year) {
  return year <= new Date().getFullYear() - 15;
}

function isAgeHigherThan100(year) {
  return year >= new Date().getFullYear() - 100;
}

function validate(values) {
  const errors = {};
  _.each(FIELDS, (fieldConfig, fieldName) => {
    if (fieldConfig.required && !values[fieldName]) {
      errors[fieldName] = 'This field is required';
    }
  });

  if (values.yearOfBirth && !isAgeLowerThan15(values.yearOfBirth)) {
    errors.yearOfBirth = 'Minimum age is 15';
  }
  if (values.yearOfBirth && !isAgeHigherThan100(values.yearOfBirth)) {
    errors.yearOfBirth = 'Maximum age is 100';
  }

  return errors;
}

const selector = formValueSelector(CHW_FORM_NAME);

function mapStateToProps(state) {
  return {
    availableLocations: state.availableLocations,
    districtId: selector(state, 'districtId'),
    chiefdomId: selector(state, 'chiefdomId'),
    facilityId: selector(state, 'facilityId'),
    yearOfBirth: selector(state, 'yearOfBirth'),
  };
}

export default reduxForm({
  validate,
  form: CHW_FORM_NAME,
})(connect(mapStateToProps, { fetchLocations })(HealthWorkersForm));

HealthWorkersForm.propTypes = {
  handleSubmit: PropTypes.func.isRequired,
  onSubmitCancel: PropTypes.func.isRequired,
  onSubmit: PropTypes.func.isRequired,
  fetchLocations: PropTypes.func.isRequired,
  availableLocations: PropTypes.arrayOf(PropTypes.shape({})),
  districtId: PropTypes.string,
  chiefdomId: PropTypes.string,
  facilityId: PropTypes.string,
  loading: PropTypes.bool,
  isChwIdDisabled: PropTypes.bool,
  yearOfBirth: PropTypes.string,
};

HealthWorkersForm.defaultProps = {
  availableLocations: [],
  districtId: null,
  chiefdomId: null,
  facilityId: null,
  loading: false,
  isChwIdDisabled: false,
  yearOfBirth: null,
};