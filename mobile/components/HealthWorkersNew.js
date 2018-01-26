import React, { Component } from 'react';
import PropTypes from 'prop-types';
import { connect } from 'react-redux';
import { View, Text, ScrollView } from 'react-native';
import { Actions } from 'react-native-router-flux';

import HealthWorkersForm from './HealthWorkersForm';
import { createHealthWorker } from '../actions';
import { CHW_WRITE_AUTHORITY, hasAuthority } from '../utils/authorization';

const styles = {
  container: {
    marginTop: 60,
  },
};

class HealthWorkersNew extends Component {
  constructor(props) {
    super(props);

    this.onSubmitCancel = this.onSubmitCancel.bind(this);
    this.onSubmit = this.onSubmit.bind(this);
  }

  componentWillMount() {
    hasAuthority(CHW_WRITE_AUTHORITY).then((result) => {
      if (!result) {
        Actions.home.call();
      }
    });
  }

  onSubmitCancel() {
    Actions.home.call();
    // this.props.history.push('/chw');
  }

  onSubmit(values) {
    console.log(values);
    this.props.createHealthWorker(values, () => {
      Actions.chws.call();
      // this.props.history.push('/chw');
    });
  }

  render() {
    return (
      <View style={styles.container}>
        <Text>Add Community Health Worker</Text>
        <ScrollView>
          <HealthWorkersForm onSubmit={this.onSubmit} onSubmitCancel={this.onSubmitCancel} />
        </ScrollView>
      </View>
    );
  }
}

export default connect(null, { createHealthWorker })(HealthWorkersNew);

HealthWorkersNew.propTypes = {
  createHealthWorker: PropTypes.func.isRequired,
};
