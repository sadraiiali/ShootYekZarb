/*
 * LocomotiveBase.h
 *
 *  Created on: Feb 6, 2017
 *      Author: amirabbas
 */

#ifndef LOCOMOTIVESRC_SRC_LOCOMOTIVEAGENT_H_
#define LOCOMOTIVESRC_SRC_LOCOMOTIVEAGENT_H_

#include <rcsc/player/player_agent.h>
#include <iostream>

using namespace std;

using namespace rcsc;

class LocomotiveAgent {

	PlayerAgent * agent;
	void doKick();
	void doDash();


public:

	LocomotiveAgent(PlayerAgent*);
	virtual ~LocomotiveAgent();
	void execute();
};

#endif /* LOCOMOTIVESRC_SRC_LOCOMOTIVEAGENT_H_ */
