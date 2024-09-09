#!/usr/bin/env bash
set -eo pipefail

ROOT_PATH=$(cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && cd .. && pwd)

export PLATFORM_PATH="${PLATFORM_PATH:-${ROOT_PATH}}"

export CONFIG_PATH="${CONFIG_PATH:-${PLATFORM_PATH}/ostis-web-platform.ini}"
export REPO_PATH="${REPO_PATH:-${PLATFORM_PATH}/repo.path}"

export SC_MACHINE_REPO="${SC_MACHINE_REPO:-https://github.com/ostis-ai/sc-machine.git}"
export SC_MACHINE_BRANCH="${SC_MACHINE_BRANCH:-main}"
export SC_MACHINE_COMMIT="${SC_MACHINE_COMMIT:-"2c95b984b9db3d62b07c340bf88907a10a42283c"}"
export SC_MACHINE_PATH="${SC_MACHINE_PATH:-${PLATFORM_PATH}/sc-machine}"

export SCP_MACHINE_REPO="${SCP_MACHINE_REPO:-https://github.com/ostis-ai/scp-machine.git}"
export SCP_MACHINE_BRANCH="${SCP_MACHINE_BRANCH:-main}"
export SCP_MACHINE_COMMIT="${SCP_MACHINE_COMMIT:-"7d7092189bde60c7ba764266034a5b0601905f95"}"
export SCP_MACHINE_PATH="${SCP_MACHINE_PATH:-${PLATFORM_PATH}/scp-machine}"

export SC_COMPONENT_MANAGER_REPO="${SC_COMPONENT_MANAGER_REPO:-https://github.com/ostis-ai/sc-component-manager.git}"
export SC_COMPONENT_MANAGER_BRANCH="${SC_COMPONENT_MANAGER_BRANCH:-main}"
export SC_COMPONENT_MANAGER_COMMIT="${SC_COMPONENT_MANAGER_COMMIT:-"87d49fb4757542eef4dedb1169d4cd2d9c76c5c9"}"
export SC_COMPONENT_MANAGER_PATH="${SC_COMPONENT_MANAGER_PATH:-${PLATFORM_PATH}/sc-component-manager}"

export SC_WEB_REPO="${SC_WEB_REPO:-https://github.com/ostis-ai/sc-web.git}"
export SC_WEB_BRANCH="${SC_WEB_BRANCH:-main}"
export SC_WEB_COMMIT="${SC_WEB_COMMIT:-"c2c3532efac3865f0c840bb62f600a68f15b84da"}"
export SC_WEB_PATH="${SC_WEB_PATH:-${PLATFORM_PATH}/interface/sc-web}"

export IMS_KB_REPO="${IMS_KB_REPO:-https://github.com/ostis-ai/ims.ostis.kb.git}"
export IMS_KB_BRANCH="${IMS_KB_BRANCH:-main}"
export IMS_KB_COMMIT="${IMS_KB_COMMIT:-"e19fd4f62cf418ae56c8f67c01d03321f19e66df"}"
export IMS_KB_PATH="${IMS_KB_PATH:-${PLATFORM_PATH}/kb/ims.ostis.kb}"

if [ -d "${SC_MACHINE_PATH}" ];
then
  source "${SC_MACHINE_PATH}/scripts/set_vars.sh"
fi

if [ -d "${SCP_MACHINE_PATH}" ];
then
  source "${SCP_MACHINE_PATH}/scripts/set_vars.sh"
fi

if [ -d "${SC_COMPONENT_MANAGER_PATH}" ];
then
  source "${SC_COMPONENT_MANAGER_PATH}/scripts/set_vars.sh"
fi

if [ -d "${SC_WEB_PATH}" ];
then
  source "${SC_WEB_PATH}/scripts/set_vars.sh"
fi
