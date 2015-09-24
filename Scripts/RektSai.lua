--[[
   ▄████████    ▄████████    ▄█   ▄█▄     ███        ▄████████    ▄████████  ▄█  
  ███    ███   ███    ███   ███ ▄███▀ ▀█████████▄   ███    ███   ███    ███ ███  
  ███    ███   ███    █▀    ███▐██▀      ▀███▀▀██   ███    █▀    ███    ███ ███▌ 
 ▄███▄▄▄▄██▀  ▄███▄▄▄      ▄█████▀        ███   ▀   ███          ███    ███ ███▌ 
▀▀███▀▀▀▀▀   ▀▀███▀▀▀     ▀▀█████▄        ███     ▀███████████ ▀███████████ ███▌ 
▀███████████   ███    █▄    ███▐██▄       ███              ███   ███    ███ ███  
  ███    ███   ███    ███   ███ ▀███▄     ███        ▄█    ███   ███    ███ ███  
  ███    ███   ██████████   ███   ▀█▀    ▄████▀    ▄████████▀    ███    █▀  █▀   
  ███    ███                ▀                                                    
  ]]--
-- Version 1.2
assert(load(Base64Decode("G0x1YVIAAQQEBAgAGZMNChoKAAAAAAAAAAAAAQeNAAAABgBAAAdAQABYgEAAFwAAgB8AgAABwAAARgBBAIFAAQDBgAEABsFBAAcBQgJBQQIAgYECAB2BgAHWAIEBXYCAAVsAAAAXAAiAhsBCAMAAgACdgAABWABDARfABoCGwEIAwAAAAJ2AAAHGwEIAAAGAAN2AAAEZwAABF4AFgIZAQwDBgAMAnUAAAYbAQwDBAAQABsFBAAcBQgJBQQIAgYECAB2BgAHWAIEBBkFEAEaBRABdgYAAR8HEAhZBAQJlAQAAnUAAAh8AgAAXgACAhkBDAMEABQCdQAABhkBFAIeARQGbQAAAF4AFgIbARQDGAEYAAUEGANYAgQGdgAABmwAAABfAAYCGgEYAwcAGAJ1AAAGGQEUAxsBGAN2AgACKwICNF8ABgIZAQwDBAAcAnUAAAYZARwDlQAAAAYEHAJ1AgAEfAIAAgwAAAMMAAAAIgMiQCMAAkAiAgI+GAEkAxkBJAAGBCQBGAUAAhsFJAJ2AgAIIgICRhgBJAMZASgABgQkARgFAAIaBSgCdgIACCIAAlIuAAADLAAEAyoDLlsoAzJfKgMyYygDNmYrAAJbLAAEAyoDNlsoAzJfKwM2YyoDLmYrAgJoIgICVpYAAAAiAAJylwAAACICAnKUAAQAIgACdpUABAAiAgJ2lgAEACIAAnqXAAQAIgICepQACAAiAAJ+lQAIACICAn6WAAgAIgACgpcACAAiAgKClAAMACIAAoaVAAwAIgIChpYADAAiAAKIfAIAARQAAAAQHAAAAbXlIZXJvAAQJAAAAY2hhck5hbWUABAcAAABSZWtTYWkABAQAAAAxLjIABA0AAABHZXRXZWJSZXN1bHQABBoAAAByYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tAAQ6AAAAL0Nhb3NKdW5pb3IvQm9ML21hc3Rlci9WZXJzaW9ucy9SZWt0U2FpLnZlcnNpb24/bm8tY2FjaGU9AAQFAAAAbWF0aAAEBwAAAHJhbmRvbQADAAAAAAAA8D8DAAAAAABq2EAECQAAAHRvbnVtYmVyAAAEBgAAAHByaW50AAR/AAAAPGZvbnQgY29sb3I9IiNGRjE0OTMiPjxiPltSZWt0U2FpXTwvYj4gPC9mb250Pjxmb250IGNvbG9yPSIjRkZGRjAwIj5BbiB1cGRhdGUgaGFzIGJlZW4gZm91bmQgYW5kIGl0IGlzIG5vdyBkb3dubG9hZGluZyE8L2ZvbnQ+AAQNAAAARG93bmxvYWRGaWxlAARWAAAAaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL0Nhb3NKdW5pb3IvQm9ML21hc3Rlci9TY3JpcHRzL1Jla3RTYWkubHVhP25vLWNhY2hlPQAEDAAAAFNDUklQVF9QQVRIAAQOAAAAR2V0Q3VycmVudEVudgAECgAAAEZJTEVfTkFNRQAEWAAAADxmb250IGNvbG9yPSIjRkYxNDkzIj48Yj5bUmVrdFNhaV08L2I+IDwvZm9udD48Zm9udCBjb2xvcj0iI0ZGMDAwMCI+VXBkYXRlIEVycm9yPC9mb250PgAEAwAAAF9HAAQKAAAAVVBMbG9hZGVkAAQKAAAARmlsZUV4aXN0AAQJAAAATElCX1BBVEgABAkAAAAvVVBMLmx1YQAECAAAAHJlcXVpcmUABAQAAABVUEwABCcAAABEb3dubG9hZGluZyBVUEwsIHBsZWFzZSBkb24ndCBwcmVzcyBGOQAEDAAAAERlbGF5QWN0aW9uAAMAAAAAAAAIQAQIAAAAU0FDbG9hZAAECAAAAE1NQWxvYWQABAcAAABTWGxvYWQAAQAEDQAAAEVuZW15TWluaW9ucwAEDgAAAG1pbmlvbk1hbmFnZXIABA0AAABNSU5JT05fRU5FTVkAAwAAAAAAwIJABBcAAABNSU5JT05fU09SVF9IRUFMVEhfREVDAAQOAAAASnVuZ2xlTWluaW9ucwAEDgAAAE1JTklPTl9KVU5HTEUABBcAAABNSU5JT05fU09SVF9IRUFMVEhfQVNDAAQHAAAAU3BlbGxzAAQFAAAAUWJ1cgAEBgAAAHJhbmdlAAMAAAAAAACZQAQGAAAAZGVsYXkAAwAAAAAAAAAABAYAAAB3aWR0aAADAAAAAACARkAEBgAAAHNwZWVkAAMAAAAAAECvQAQFAAAARWJ1cgADAAAAAABwh0ADAAAAAAAATkAEBwAAAE9uTG9hZAAEBwAAAE9uVGljawAEBQAAAE1lbnUABAYAAABDaGVjawAEDQAAAENoZWNrT3Jid2FsawAEBgAAAENvbWJvAAQHAAAASGFyYXNzAAQKAAAATGFuZWNsZWFyAAQM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AB1AAAIGAEAADABBAIHABADBAAUAHUAAAgZARQAMgEUAhgBAAB1AgAEGAEAAB4BBAAzARQCBgAEAwQAGAAZBRgBDAQAAgYEGAB1AgAMGAEAAB4BBAAwAQQCBwAYAwQAHAB1AAAIGAEAAB4BBAAwAQQCBQAcAwYAHAB1AAAIGAEAAB4BBAAwAQQCBwAcAwQAIAB1AAAIGAEAAB4BBAAcARwAMwEUAgUAIAMGACAAGwUgAQwGAAB1AAAMGAEAAB4BBAAcARwAMwEUAgQAJAMFACQAGwUgAQwGAAB1AAAMGAEAAB4BBAAcARwAMwEUAgYAJAMHACQAGAUoAQUEKAIGBCgDBwQoAAQILAB1AgAQGAEAAB4BBAAeARwAMwEUAgUALAMGACwAGwUgAQwGAAB1AAAMGAEAAB4BBAAeARwAMwEUAgcALAMEADAAGAUoAQUEMAIGBDADBwQwAAYIKAB1AgAQGAEAAB4BBAAcASAAMwEUAgQANAMFADQAGwUgAQwGAAB1AAAMGAEAAB4BBAAcASAAMwEUAgYANAMHADQAGwUgAQwGAAB1AAAMGAEAAB4BBAAcASAAMwEUAgQAOAMFADgAGwUgAQwGAAB1AAAMGAEAAB4BBAAcASAAMwEUAgYAOAMHADgAGAU8AQQELAIsBAAHBQQ8AAYIPAKRBAAEdQIADBgBAAAeAQQAHAEgADMBFAIHADwDBABAABgFKAEFBEACBgRAAwcEQAAGCCgAdQIAEBgBAAAeAQQAHAEgADMBFAIGACQDBABEABgFKAEEBCwCBgQoAwcEKAAECCwAdQIAEBgBAAAcAQgAMwEUAgQACAMFAEQAGQUYAQwEAAIaBUQCHwVEDwQESAJ0BAAEdQAAABgBAAAcAQgAMAEEAgcAGAMEABwAdQAACBgBAAAcAQgAMAEEAgUAHAMGABwAdQAACBgBAAAcAQgAHAEcADMBFAIFACADBQAkABsFIAEMBgAAdQAADBgBAAAcAQgAHAEcADMBFAIGACQDBwAkABgFKAEFBCgCBgQoAwcEKAAECCwAdQIAEBgBAAAcAQgAHgEcADMBFAIFACwDBQBIABsFIAEMBgAAdQAADBgBAAAeAQgAMwEUAgYACAMGAEgAGQUYAQwEAAIaBUQCHwVEDwcESAJ0BAAEdQAAABgBAAAeAQgAMAEEAgcAGAMEABwAdQAACBgBA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MwAAADMAAAAzAAAANAAAADQAAAA0AAAANAAAADQAAAA0AAAANAAAADQAAAA0AAAANAAAADQAAAA0AAAANAAAADQAAAA0AAAANAAAADQAAAA0AAAANQAAADUAAAA1AAAANQAAADUAAAA1AAAANgAAADYAAAA2AAAANgAAADYAAAA2AAAANgAAADYAAAA2AAAANwAAADcAAAA3AAAANwAAADcAAAA3AAAANwAAADcAAAA3AAAAOAAAADgAAAA4AAAAOAAAADgAAAA4AAAAOAAAADgAAAA4AAAAOAAAADgAAAA4AAAAOAAAADgAAAA4AAAAOAAAADgAAAA4AAAAOQAAADkAAAA5AAAAOQAAADkAAAA5AAAAOgAAADoAAAA6AAAAOgAAADoAAAA6AAAAOgAAADoAAAA6AAAAOwAAADsAAAA7AAAAOwAAADsAAAA7AAAAOwAAADsAAAA7AAAAOwAAADsAAAA7AAAAOwAAADsAAAA7AAAAPAAAADwAAAA8AAAAPAAAADwAAAA8AAAAPQAAAD0AAAA9AAAAPQAAAD0AAAA9AAAAPQAAAD0AAAA9AAAAPgAAAD4AAAA+AAAAPgAAAD4AAAA+AAAAPgAAAD4AAAA+AAAAPgAAAD4AAAA+AAAAPwAAAD8AAAA/AAAAPwAAAD8AAAA/AAAAPwAAAD8AAAA/AAAAQAAAAEAAAABAAAAAQAAAAEAAAABAAAAAQAAAAEAAAABAAAAAQAAAAEAAAABAAAAAQQAAAEEAAABBAAAAQQAAAEEAAABBAAAAQQAAAEEAAABCAAAAQgAAAEIAAABCAAAAQgAAAEIAAABCAAAAQgAAAEMAAABDAAAAQwAAAEMAAABDAAAAQwAAAEMAAABDAAAARAAAAEQAAABEAAAARAAAAEQAAABEAAAARAAAAEQAAABFAAAARQAAAEUAAABFAAAARQAAAEUAAABFAAAARQAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARwAAAEcAAABHAAAARwAAAEcAAABHAAAARwAAAEcAAABHAAAARwAAAEcAAABHAAAARwAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAASAAAAEgAAABIAAAA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"), nil, "bt", _ENV))()
-- SCRIPT STATUS
assert(load(Base64Decode("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"), nil, "bt", _ENV))() ScriptStatus("VILKQQJNPNO")