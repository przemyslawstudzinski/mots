import _ from 'lodash';
import React, { Component } from 'react';
import PropTypes from 'prop-types';
import { reduxForm, formValueSelector } from 'redux-form';
import { connect } from 'react-redux';
import { View } from 'react-native';
import { Select } from 'react-native-chooser';
import DatePicker from 'react-native-datepicker';
import { CheckBox } from 'react-native-elements';

import FormField from './FormField';
import { fetchLocations } from '../actions';
import {
  clearFields,
  untouchFields,
  getAttributesForSelect,
  getAttributesForSelectWithClearOnChange,
  sortValuesByName,
} from '../utils/form-utils';
import Button from './Button';
import styles from '../styles/formsStyles';
import Spinner from './Spinner';

export const CHW_FORM_NAME = 'HealthWorkersForm';
const FIELDS = {
  chwId: {
    label: 'CHW Id',
    required: true,
  },
  firstName: {
    label: 'First Name',
    required: true,
  },
  secondName: {
    label: 'Surname',
    required: true,
  },
  otherName: {
    label: 'Other Name',
  },
  dateOfBirth: {
    label: 'Date of Birth',
    type: DatePicker,
    getAttributes: (input) => {
      const format = 'YYYY-MM-DD';
      return {
        format,
        timeFormat: false,
        closeOnSelect: true,
        date: input.value,
        onDateChange: (param) => {
          const formatted = !param || typeof param === 'string' ? param : param.format(format);
          input.onChange(formatted);
        },
      };
    },
    nonBorderField: true,
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
  },
  districtId: {
    type: Select,
    label: 'District',
    getSelectOptions: ({ availableLocations }) => ({
      values: availableLocations && sortValuesByName(availableLocations),
      displayNameKey: 'name',
      valueKey: 'id',
    }),
    getAttributes: input => (
      getAttributesForSelectWithClearOnChange(input, CHW_FORM_NAME, 'chiefdomId', 'facilityId', 'communityId')
    ),
  },
  chiefdomId: {
    type: Select,
    label: 'Chiefdom',
    getSelectOptions: ({ availableLocations, districtId }) => {
      const district = availableLocations && districtId && availableLocations[districtId];

      return ({
        values: district && sortValuesByName(district.chiefdoms),
        displayNameKey: 'name',
        valueKey: 'id',
      });
    },
    getAttributes: input => (
      getAttributesForSelectWithClearOnChange(input, CHW_FORM_NAME, 'facilityId', 'communityId')),
  },
  facilityId: {
    type: Select,
    label: 'Facility',
    getSelectOptions: ({ availableLocations, districtId, chiefdomId }) => {
      const district = availableLocations && districtId && availableLocations[districtId];
      const chiefdom = chiefdomId && district && district.chiefdoms[chiefdomId];

      return ({
        values: chiefdom && sortValuesByName(chiefdom.facilities),
        displayNameKey: 'name',
        valueKey: 'id',
      });
    },
    getAttributes: input => (
      getAttributesForSelectWithClearOnChange(input, CHW_FORM_NAME, 'communityId')),
  },
  communityId: {
    type: Select,
    label: 'Community',
    required: true,
    getSelectOptions: ({
      availableLocations, districtId, chiefdomId, facilityId,
    }) => {
      const district = availableLocations && districtId && availableLocations[districtId];
      const chiefdom = chiefdomId && district && district.chiefdoms[chiefdomId];
      const facility = facilityId && chiefdom && chiefdom.facilities[facilityId];

      return ({
        values: facility && sortValuesByName(facility.communities),
        displayNameKey: 'name',
        valueKey: 'id',
      });
    },
    getAttributes: input => (getAttributesForSelect(input)),
  },
  hasPeerSupervisor: {
    type: CheckBox,
    label: 'Peer Supervisor',
    getAttributes: input => (
      {
        title: 'check',
        checked: input.value === true,
        onPress: () => {
          input.onChange(!input.value);
        },
      }
    ),
    nonBorderField: true,
  },
  supervisor: {
    label: 'Supervisor',
    getDynamicAttributes: ({ hasPeerSupervisor }) => ({
      hidden: !hasPeerSupervisor,
    }),
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
        hasPeerSupervisor={this.props.hasPeerSupervisor}
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
      <View style={styles.chwAddContainer}>
        { _.map(FIELDS, this.renderField) }
        {this.renderButton()}
      </View>
    );
  }
}

function validate(values) {
  const errors = {};
  _.each(FIELDS, (fieldConfig, fieldName) => {
    if (fieldConfig.required && !values[fieldName]) {
      errors[fieldName] = 'This field is required';
    }
  });

  return errors;
}

const selector = formValueSelector(CHW_FORM_NAME);

function mapStateToProps(state) {
  return {
    availableLocations: state.availableLocations,
    districtId: selector(state, 'districtId'),
    chiefdomId: selector(state, 'chiefdomId'),
    facilityId: selector(state, 'facilityId'),
    hasPeerSupervisor: selector(state, 'hasPeerSupervisor'),
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
  availableLocations: PropTypes.shape({}),
  districtId: PropTypes.string,
  chiefdomId: PropTypes.string,
  facilityId: PropTypes.string,
  hasPeerSupervisor: PropTypes.bool,
  loading: PropTypes.bool,
};

HealthWorkersForm.defaultProps = {
  availableLocations: null,
  districtId: null,
  chiefdomId: null,
  facilityId: null,
  hasPeerSupervisor: false,
  loading: false,
};