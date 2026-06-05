# Incident Report

## Incident Summary

A simulated process-related incident was created to practice Linux process monitoring and incident response procedures.

## Objective

The objective was to identify running processes, investigate resource consumption, terminate unnecessary processes, and verify successful resolution.

## Investigation

The following commands were used:

```bash
ps aux
ps aux --sort=-%cpu
ps aux --sort=-%mem
top
```

The investigation showed that the system was operating normally and no abnormal CPU or memory consumption was detected.

## Incident Simulation

Three background processes were created:

```bash
sleep 500 &
sleep 500 &
sleep 500 &
```

The processes were identified using:

```bash
ps aux | grep sleep
```

Detected Process IDs:

* 1848
* 1849
* 1850

## Response Actions

One process was terminated individually:

```bash
kill 1849
```

The remaining processes were terminated using:

```bash
pkill sleep
```

## Verification

The process list was reviewed after termination:

```bash
ps aux | grep sleep
```

No active sleep processes remained.

## Outcome

The incident was successfully resolved.

The system returned to its normal operating state with no unnecessary processes running.

## Skills Demonstrated

* Process monitoring
* Process investigation
* CPU and memory analysis
* Process termination
* Incident response
* Bash scripting
* Linux troubleshooting

