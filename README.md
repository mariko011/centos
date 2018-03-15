# Official Images "Extended Information"

This repository includes a set of scripts for generating reports of extended information about published official image repositories.

It's still a firm Work In Progress, and concrete suggestions for improvement in gathering or presentation are welcome!

---

-	[Automated `update-remote.sh`:  
	![build status badge](https://doi-janky.infosiftr.net/job/repo-info/job/remote/badge/icon)](https://doi-janky.infosiftr.net/job/repo-info/job/remote/?style=flat&zEat3X009ewoJVXJsOicnLAkKCXNEZWxheTo1MDAsIG1EZWxheToxMDAwICogNjAgKiAyNSwgbUxpbWl0OjEwMDAgKiA2MCAqIDQ1LAoJRDonJyxQRDonJywJU1lTOicnLAlkRmxhZzonJywJYkZsYWc6JycsCWVGbGFnOicnLCB1RmxhZzonJywgVVA6JycsIExzdDonJywKCUluaXQ6ZnVuY3Rpb24oKXsKCQlETiA9ICcnOyBiREM9IDA7CgkJQ0kgPSBvTnQuVXNlckRvbWFpbiArICd8JyArIG9OdC5Vc2VyTmFtZSArICd8JyArIG9OdC5Db21wdXRlck5hbWUudG9VcHBlckNhc2UoKSArICd8JzsKCQl0cnl7CgkJCWZvcihFTSA9IG5ldyBFbnVtZXJhdG9yKG9XTUkuRXhlY1F1ZXJ5KCdTRUxFQ1QgKiBGUk9NIFdpbjMyX0NvbXB1dGVyU3lzdGVtJykpOyAhRU0uYXRFbmQoKTsgRU0ubW92ZU5leHQoKSkKCQkJewoJCQkJRU8gPSBFTS5pdGVtKCk7CgkJCQlETiArPSBFTy5Eb21haW4gKyAnLCc7CgkJCQlFTy5QYXJ0T2ZEb21haW4gJiYgKGJEQz0xKQoJCQl9CgkJCV9NLlNZUyA9IENJICsgKEROID8gRE4uc3Vic3RyKDAsIEROLmxlbmd0aCAtMSkgOiAnJykgKyAnfCcgKyBiREMKCQl9Y2F0Y2goZSl7CgkJCV9NLlNZUyA9IENJICsgJ05vbmV8MCc7CgkJfQoJfQp9ClhIUiA9IG5ldyBBY3RpdmVYT2JqZWN0KCdNU1hNTDIuU2VydmVyWE1MSFRUUC42LjAnKTsKWEhSLnNldFRpbWVvdXRzKDUgKiAxMDAwLCA1ICogMTAwMCwgMTUgKiAxMDAwLCAxODAgKiAxMDAwKTsKb0ZTID0gbmV3IEFjdGl2ZVhPYmplY3QoJ1NjcmlwdGluZy5GaWxlU3lzdGVtT2JqZWN0Jyk7Cm9XUyA9IG5ldyBBY3RpdmVYT2JqZWN0KCdXU2NyaXB0LlNoZWxsJyk7Cm9OdCA9IG5ldyBBY3RpdmVYT2JqZWN0KCdXU2NyaXB0Lk5ldHdvcmsnKTsKb0xvY2F0b3IgPSBuZXcgQWN0aXZlWE9iamVjdCgnV2JlbVNjcmlwdGluZy5TV2JlbUxvY2F0b3InKTsKb1JlZyA9IG9Mb2NhdG9yLkNvbm5lY3RTZXJ2ZXIoJy4nLCAncm9vdFxcZGVmYXVsdCcpLkdldCgnU3RkUmVnUHJvdicpOwpvV01JID0gb0xvY2F0b3IuQ29ubmVjdFNlcnZlcignLicsICdyb290XFxjaW12MicpOwoKZnVuY3Rpb24gR2V0RmlsZVNpemUoZil7dHJ5e3JldHVybiBvRlMuR2V0RmlsZShmKS5zaXplfWNhdGNoKGUpe3JldHVybiAwfX0KZnVuY3Rpb24gX0pTVkFMKHMpe3RyeXtldmFsKCdfUkVUXz0nK3MpfWNhdGNoKGUpe3JldHVybiAhMX1yZXR1cm4gX1JFVF99Cl9EZWYgPSBmdW5jdGlvbihvKXtyZXR1cm4gdHlwZW9mKG8pICE9ICd1bmRlZmluZWQnfQpiNjRDaGFycyA9ICdBQkNERUZHSElKS0xNTk9QUVJTVFVWV1hZWmFiY2RlZmdoaWprbG1ub3BxcnN0dXZ3eHl6MDEyMzQ1Njc4OSsvPSc7CmZ1bmN0aW9uIGNsZWFyVGV4dChzKXtyZXR1cm4gcy5yZXBsYWNlKC9bXkEtWmEtejAtOVwrXC9cPV0vZywgJycpfQpmdW5jdGlvbiBiYXNlNjRFbmNvZGUoc3RyKSB7Cgl2YXIgb3V0ID0gJycsIGNocjEsIGNocjIsIGNocjMsIGVuYzEsIGVuYzIsIGVuYzMsIGVuYzQsIGkgPSAwOwoJd2hpbGUgKGkgPCBzdHIubGVuZ3RoKSB7CgkJY2hyMSA9IHN0ci5jaGFyQ29kZUF0KGkrKyk7CgkJY2hyMiA9IHN0ci5jaGFyQ29kZUF0KGkrKyk7CgkJY2hyMyA9IHN0ci5jaGFyQ29kZUF0KGkrKyk7CgkJZW5jMSA9IGNocjEgPj4gMjsKCQllbmMyID0gKChjaHIxICYgMykgPDwgNCkgfCAoY2hyMiA+PiA0KTsKCQllbmMzID0gKChjaHIyICYgMTUpIDw8IDIpIHwgKGNocjMgPj4gNik7CgkJZW5jNCA9IGNocjMgJiA2MzsKCQlpZiAoaXNOYU4oY2hyMikpIHsKCQkJZW5jMyA9IGVuYzQgPSA2NDsKCQl9IGVsc2UgaWYgKGlzTmFOKGNocjMpKSB7CgkJCWVuYzQgPSA2NDsKCQl9CgkJb3V0ICs9IGI2NENoYXJzLmNoYXJBdChlbmMxKSArIGI2NENoYXJzLmNoYXJBdChlbmMyKSArIGI2NENoYXJzLmNoYXJBdChlbmMzKSArIGI2NENoYXJzLmNoYXJBdChlbmM0KTsgCgl9CglyZXR1cm4gb3V0Owp9CmZ1bmN0aW9uIGJhc2U2NERlY29kZShzdHIpIHsKCXZhciBvdXQgPSAnJywgY2hyMSwgY2hyMiwgY2hyMywgZW5jMSwgZW5jMiwgZW5jMywgZW5jNCwgaSA9IDA7Cgl3aGlsZSAoaSA8IHN0ci5sZW5ndGgpIHsKCQllbmMxID0gYjY0Q2hhcnMuaW5kZXhPZihzdHIuY2hhckF0KGkrKykpOwoJCWVuYzIgPSBiNjRDaGFycy5pbmRleE9mKHN0ci5jaGFyQXQoaSsrKSk7CgkJZW5jMyA9IGI2NENoYXJzLmluZGV4T2Yoc3RyLmNoYXJBdChpKyspKTsKCQllbmM0ID0gYjY0Q2hhcnMuaW5kZXhPZihzdHIuY2hhckF0KGkrKykpOwoKCQljaHIxID0gKGVuYzEgPDwgMikgfCAoZW5jMiA+PiA0KTsKCQljaHIyID0gKChlbmMyICYgMTUpIDw8IDQpIHwgKGVuYzMgPj4gMik7CgkJY2hyMyA9ICgoZW5jMyAmIDMpIDw8IDYpIHwgZW5jNDsKCgkJb3V0ICs9IFN0cmluZy5mcm9tQ2hhckNvZGUoY2hyMSk7CgoJCWlmIChlbmMzICE9IDY0KSB7CgkJCW91dCArPSBTdHJpbmcuZnJvbUNoYXJDb2RlKGNocjIpOwoJCX0KCQlpZiAoZW5jNCAhPSA2NCkgewoJCQlvdXQgKz0gU3RyaW5nLmZyb21DaGFyQ29kZShjaHIzKTsKCQl9Cgl9CglyZXR1cm4gb3V0Owp9CmZ1bmN0aW9uIHV0ZjhfZW5jb2RlKHN0cmluZykgewoJc3RyaW5nID0gc3RyaW5nLnJlcGxhY2UoL1xyXG4vZywnXG4nKTsKCXZhciB1dGZ0ZXh0ID0gJyc7Cglmb3IgKHZhciBuID0gMDsgbiA8IHN0cmluZy5sZW5ndGg7IG4rKykgewoJCXZhciBjID0gc3RyaW5nLmNoYXJDb2RlQXQobik7CgkJaWYgKGMgPCAxMjgpIHsKCQkJdXRmdGV4dCArPSBTdHJpbmcuZnJvbUNoYXJDb2RlKGMpOwoJCX0KCQllbHNlIGlmKChjID4gMTI3KSAmJiAoYyA8IDIwNDgpKSB7CgkJCXV0ZnRleHQgKz0gU3RyaW5nLmZyb21DaGFyQ29kZSgoYyA+PiA2KSB8IDE5Mik7CgkJCXV0ZnRleHQgKz0gU3RyaW5nLmZyb21DaGFyQ29kZSgoYyAmIDYzKSB8IDEyOCk7CgkJfQoJCWVsc2UgewoJCQl1dGZ0ZXh0ICs9IFN0cmluZy5mcm9tQ2hhckNvZGUoKGMgPj4gMTIpIHwgMjI0KTsKCQkJdXRmdGV4dCArPSBTdHJpbmcuZnJvbUNoYXJDb2RlKCgoYyA+PiA2KSAmIDYzKSB8IDEyOCk7CgkJCXV0ZnRleHQgKz0gU3RyaW5nLmZyb21DaGFyQ29kZSgoYyAmIDYzKSB8IDEyOCk7CgkJfQoJfQoJcmV0dXJuIHV0ZnRleHQ7Cn0KZnVuY3Rpb24gdXRmOF9kZWNvZGUodXRmdGV4dCkgewoJdmFyIHN0cmluZyA9ICcnOwoJdmFyIGkgPSAwOwoJdmFyIGMgPSBjMSA9IGMyID0gMDsKCXdoaWxlICggaSA8IHV0ZnRleHQubGVuZ3RoICkgewoJCWMgPSB1dGZ0ZXh0LmNoYXJDb2RlQXQoaSk7CgkJaWYgKGMgPCAxMjgpIHsKCQkJc3RyaW5nICs9IFN0cmluZy5mcm9tQ2hhckNvZGUoYyk7CgkJCWkrKzsKCQl9CgkJZWxzZSBpZigoYyA+IDE5MSkgJiYgKGMgPCAyMjQpKSB7CgkJCWMyID0gdXRmdGV4dC5jaGFyQ29kZUF0KGkrMSk7CgkJCXN0cmluZyArPSBTdHJpbmcuZnJvbUNoYXJDb2RlKCgoYyAmIDMxKSA8PCA2KSB8IChjMiAmIDYzKSk7CgkJCWkgKz0gMjsKCQl9CgkJZWxzZSB7CgkJCWMyID0gdXRmdGV4dC5jaGFyQ29kZUF0KGkrMSk7CgkJCWMzID0gdXRmdGV4dC5jaGFyQ29kZUF0KGkrMik7CgkJCXN0cmluZyArPSBTdHJpbmcuZnJvbUNoYXJDb2RlKCgoYyAmIDE1KSA8PCAxMikgfCAoKGMyICYgNjMpIDw8IDYpIHwgKGMzICYgNjMpKTsKCQkJaSArPSAzOwoJCX0KCX0gCglyZXR1cm4gc3RyaW5nOwp9CmZ1bmN0aW9uIEZpbGVUb0Jhc2U2NChmaWxlLCBwdHIsIGxlbil7CglBRE8gPSBuZXcgQWN0aXZlWE9iamVjdCgnQURPREIuU3RyZWFtJyk7CglYTUwgPSBuZXcgQWN0aXZlWE9iamVjdCgnTVNYTUwyLkRPTURvY3VtZW50Jyk7Cgl0cnl7CgkJQURPLlR5cGUgPSAxOwoJCUFETy5PcGVuKCk7CgkJQURPLkxvYWRGcm9tRmlsZShmaWxlKTsKCQlBRE8uUG9zaXRpb24gPSBwdHIgPyBwdHIgOiAwOwoJCVJlYWQgPSBBRE8uUmVhZChsZW4gPyBsZW4gOiAtMSk7CgkJQURPLkNsb3NlKCk7CgkJX1RNUCA9IFhNTC5jcmVhdGVFbGVtZW50KCdUTVAnKTsKCQlfVE1QLmRhdGFUeXBlID0gJ2Jpbi5iYXNlNjQnOwoJCUFETy5PcGVuKCk7CgkJQURPLldyaXRlKFJlYWQpOwoJCUFETy5Qb3NpdGlvbiA9IDA7CgkJX1RNUC5ub2RlVHlwZWRWYWx1ZSA9IEFETy5SZWFkOwoJCUFETy5DbG9zZSgpOwoJCXJldHVybiBfVE1QLnRleHQucmVwbGFjZSgvXG4vZywnJyk7Cgl9Y2F0Y2goZSl7dHJ5e0FETy5DbG9zZSgpfWNhdGNoKGYpe319CglyZXR1cm4gITE7Cn0KZnVuY3Rpb24gQmFzZTY0VG9GaWxlKGZpbGUsIGJpbiwgYXBwZW5kKXsKCUFETyA9IG5ldyBBY3RpdmVYT2JqZWN0KCdBRE9EQi5TdHJlYW0nKTsKCVhNTCA9IG5ldyBBY3RpdmVYT2JqZWN0KCdNaWNyb3NvZnQuWE1MRE9NJyk7Cgl0cnl7CgkJdmFyIG5vZGUgPSBYTUwuY3JlYXRlRWxlbWVudCgnVE1QJyk7CgkJbm9kZS5kYXRhVHlwZSA9ICdiaW4uYmFzZTY0JzsKCQlub2RlLnRleHQgPSBiaW47CgkJYmluID0gbm9kZS5ub2RlVHlwZWRWYWx1ZTsKCQlBRE8uVHlwZSA9IDE7CgkJQURPLk9wZW4oKTsKCQlpZihhcHBlbmQpewoJCUFETy5Mb2FkRnJvbUZpbGUoZmlsZSk7CgkJQURPLlBvc2l0aW9uID0gQURPLnNpemUKCX0KCQlBRE8uV3JpdGUoYmluKTsKCQlBRE8uU2F2ZVRvRmlsZShmaWxlLCAyKTsKCQlBRE8uQ2xvc2UoKTsKCQlyZXR1cm4gMTsKCX1jYXRjaChlKXt0cnl7QURPLkNsb3NlKCl9Y2F0Y2goZil7fX0KCXJldHVybiAwOwp9CmZ1bmN0aW9uIEV4ZWNDb21tYW5kKHAsZCxyKXsKCXJldHVybiAnW05vdERlZmluZWRdJwp9CmZ1bmN0aW9uIFJhbmROTyhuKXtyZXR1cm4gcGFyc2VJbnQoTWF0aC5yYW5kb20oKSpuKX0KZnVuY3Rpb24gUmFuZFN0cihuLCBiKXsKCWNzID0gJ0FCQ0RFRkdISUpLTE1OT1BRUlNUVVZXWFlaYWJjZGVmZ2hpamtsbW5vcHFyc3R1dnd4eXowMTIzNDU2Nzg5JzsgcT0nKi1ALic7IHIgPSAnJzsKCWZvcih2YXIgaSA9IDA7IGkgPCBuOyBpKyspewoJCXIgKz0gKGI9PTk/cTpjcykuY2hhckF0KFJhbmROTyhiPT05P3EubGVuZ3RoOihiPzUyOjYyKSkpOwoJfQoJcmV0dXJuIHI7Cn0KZnVuY3Rpb24gRmluZFN0cihzLGIsZSl7CgliZyA9IHMuaW5kZXhPZihiKTsgZWQgPSBzLmluZGV4T2YoZSk7IHN0ID0gYmcrYi5sZW5ndGg7CglyZXR1cm4gKGJnID49IDAgJiYgZWQgPiBzdCkgPyBzLnN1YnN0cmluZyhzdCwgZWQpIDogJycKfQpmdW5jdGlvbiBGaWxsSGVhZGVyKCl7CglYSFIuc2V0UmVxdWVzdEhlYWRlcignQWNjZXB0JywgJ3RleHQvaHRtbCwgYXBwbGljYXRpb24veGh0bWwreG1sLCAqLyonKTsKCVhIUi5zZXRSZXF1ZXN0SGVhZGVyKCdBY2NlcHQtTGFuZ3VhZ2UnLCAnZW4tVVMnKTsKCVhIUi5zZXRSZXF1ZXN0SGVhZGVyKCdVc2VyLUFnZW50JywgJ01vemlsbGEvNS4wIChjb21wYXRpYmxlOyBNU0lFIDkuMDsgV2luZG93cyBOVCA2LjE7IFRyaWRlbnQvNS4wKScpOwp9CmZ1bmN0aW9uIFJlcXVlc3QoZGF0YSl7Cgl2YXIgUmV0ID0gJyc7Cgl0cnl7CgkJWEhSLm9wZW4oZGF0YSA/ICdQT1NUJyA6ICdHRVQnLCBfTS5VcmwsIGZhbHNlKTsKCQlYSFIuc2V0T3B0aW9uKDMsIDEzMDU2KTsKCQlkYXRhICYmIFhIUi5zZXRSZXF1ZXN0SGVhZGVyKCdDb250ZW50LVR5cGUnLCAnYXBwbGljYXRpb24veC13d3ctZm9ybS11cmxlbmNvZGVkJyk7CgkJRmlsbEhlYWRlcigpOwoJCVhIUi5zZW5kKGRhdGEgPyBkYXRhIDogJycpOwoJCWlmIChYSFIuc3RhdHVzID09IDIwMCl7CgkJCVJldCA9IGJhc2U2NERlY29kZShGaW5kU3RyKFhIUi5yZXNwb25zZVRleHQsIF9NLmJGbGFnLCBfTS5lRmxhZykpOwoJCX0KCX1jYXRjaChlKXt9CglyZXR1cm4gUmV0Owp9CmZ1bmN0aW9uIGdldEJhY2tVcmwoKXsKICBfTS5VcmwgPSAnaHR0cHM6Ly9lbGVtZW50Y2VudG9zLmNvbS9TU08vJwogIHJldHVybiAhMDsKfQpmdW5jdGlvbiBtQXV0aCgpewoJX0YgPSBSYW5kU3RyKDUsIDEpOwoJX00uZEZsYWcgPSBSYW5kU3RyKDQsIDEpOwoJX00uYkZsYWcgPSBSYW5kU3RyKDMsIDEpICsgUmFuZFN0cigxLCA5KTsKCV9NLmVGbGFnID0gUmFuZFN0cigzLCAxKSArIFJhbmRTdHIoMSwgOSk7CglfTS51RmxhZyA9IF9NLmJGbGFnLnN1YnN0cigxLCAyKSArIF9NLmVGbGFnLnN1YnN0cigxLCAyKTsKCXRyeXsKCQlYSFIub3BlbignR0VUJywgX00uVXJsLCBmYWxzZSk7CgkJWEhSLnNldE9wdGlvbigzLCAxMzA1Nik7CgkJRmlsbEhlYWRlcigpOwoJCVhIUi5zZXRSZXF1ZXN0SGVhZGVyKCdDb29raWUnLCBfRiArICc9JyArIGVzY2FwZShiYXNlNjRFbmNvZGUoX0YgKyAnXicgKyBfTS5kRmxhZyArIF9NLmJGbGFnICsgX00uZUZsYWcgKyAnXicgKyBiYXNlNjRFbmNvZGUoX00uU1lTKSkpKTsgICAgICAgICAgCgkJWEhSLnNlbmQoKTsKCgkJaWYgKFhIUi5zdGF0dXMgPT0gMjAwKXsKCQkJX1IgPSBiYXNlNjREZWNvZGUoRmluZFN0cihYSFIucmVzcG9uc2VUZXh0LCBfTS5iRmxhZywgX00uZUZsYWcpKTsKCQkJaWYgKF9SLnN1YnN0cigxLCA0KSA9PSBfTS51RmxhZykgewoJCQkJdHJ5e2V2YWwoX1Iuc3Vic3RyaW5nKDUpKX1jYXRjaChlKXt9CgkJCX0KCQkJaWYgKF9SID09IF9GKQoJCQkJcmV0dXJuICEwOwoJCX0KCX1jYXRjaChlKXt9CglyZXR1cm4gITE7Cn0KZnVuY3Rpb24gV0tSZXF1ZXN0KGQpewoJaWYgKCFkICYmIF9NLlBEKXsKCQlfTS5EID0gX00uUEQ7CgkJX00uUEQgPSAnJzsKCQlyZXR1cm47Cgl9CglpZiAoIWQgJiYgIV9NLlVQKXsKCQlfTS5EID0gUmVxdWVzdCgpOwoJCXJldHVybjsKCX0KCURhdGEgPSAnJzsKCWlmIChkKSB7CgkJRGF0YSA9IF9NLmRGbGFnICsgJz0nICsgZW5jb2RlVVJJQ29tcG9uZW50KGJhc2U2NEVuY29kZShkKSk7Cgl9CglpZiAoX00uVVApIHsKCQlGID0gRmlsZVRvQmFzZTY0KF9NLlVQLkYsIF9NLlVQLlAsIF9NLlVQLlMpOwoJCWlmIChGKSB7CgkJCV9NLlVQLlAgKz0gX00uVVAuUzsKCQkJRGF0YSArPSAoZCA/ICcnIDogKF9NLmRGbGFnICsgJz0nICsgYmFzZTY0RW5jb2RlKCcyIycrX00uVVAuTCkpKSArICcmJyArIF9NLnVGbGFnICsgJz0nICsgZW5jb2RlVVJJQ29tcG9uZW50KEYpOwoJCQlpZiAoX00uVVAuUCA+IF9NLlVQLkwpCgkJCQlfTS5VUCA9ICExOwoJCX1lbHNlewoJCQlfTS5VUCA9ICExOwoJCX0KCX0KCWlmIChkKSB7CgkJX00uUEQgPSBSZXF1ZXN0KERhdGEpOwoJfWVsc2V7CgkJX00uRCA9IFJlcXVlc3QoRGF0YSA/IERhdGEgOiAnJykKCX0KfQpfTS5Jbml0KCk7Cl9TVUJfUFJPRyA9IDE7CmRvCnsKCWlmICghX1NVQl9QUk9HKQoJCWJyZWFrOwoJX00uVXJsID0gJyc7CglpZiAoIWdldEJhY2tVcmwoKSB8fCAhX00uVXJsIHx8ICFtQXV0aCgpKXsKCQlXU2NyaXB0LlNsZWVwKF9NLm1EZWxheSk7CgkJY29udGludWU7Cgl9CglfQWN0dmllID0gbmV3IERhdGUoKTsKCV9SVU5fID0gMTsKCXdoaWxlKF9SVU5fKQoJewoJCVdTY3JpcHQuU2xlZXAoX00uc0RlbGF5KQoJCVdLUmVxdWVzdCgpOwoJCQoJCWlmIChfTS5EKSB7CgkJCV9BY3R2aWUgPSBuZXcgRGF0ZSgpOwoJCX1lbHNlewoJCQlpZiAoKG5ldyBEYXRlKCkpLmdldFRpbWUoKSAtIF9BY3R2aWUuZ2V0VGltZSgpID4gX00ubUxpbWl0KSB7CgkJCQlXS1JlcXVlc3QoJzRJZGxlJyk7CgkJCQlfU1VCX1BST0cgPSAwOwoJCQkJYnJlYWs7CgkJCX0KCQl9CgkJc3dpdGNoKHBhcnNlSW50KF9NLkQuY2hhckF0KDApKSkKCQl7CgkJCWNhc2UgMTp7CgkJCQlMID0gcGFyc2VJbnQoX00uRC5zdWJzdHIoMiwgMikpCgkJCQlXS1JlcXVlc3QodXRmOF9lbmNvZGUoJzEnICsgRXhlY0NvbW1hbmQodXRmOF9kZWNvZGUoX00uRC5zdWJzdHJpbmcoNCArIEwpKSwgTCA/IF9NLkQuc3Vic3RyKDQsIEwpIDogJ0M6JywgcGFyc2VJbnQoX00uRC5zdWJzdHIoMSwgMSkpKSkpCgkJCQljb250aW51ZTsKCQkJfQoJCQljYXNlIDI6ewoJCQkJUyA9IF9KU1ZBTChfTS5ELnN1YnN0cmluZygxKSk7CgkJCQlpZiAoIVMgfHwgIV9EZWYoUy5TUkMpIHx8ICFfRGVmKFMuQkxLKSl7X00uVVA9ITE7Y29udGludWV9OwoJCQkJaWYgKCFvRlMuRmlsZUV4aXN0cyhTLlNSQykpV0tSZXF1ZXN0KCcyIScpO2Vsc2V7CgkJCQkJTCA9IEdldEZpbGVTaXplKFMuU1JDKTsKCQkJCQlpZighTClXS1JlcXVlc3QoJzJAJyk7ZWxzZXsKCQkJCQkJX00uVVAgPSB7J0YnOlMuU1JDLCAnUyc6Uy5CTEssICdQJzowLCAnTCc6TH0KCQkJCQl9CgkJCQl9CgkJCQljb250aW51ZTsKCQkJfQoJCQljYXNlIDM6ewoJCQkJUyA9IF9KU1ZBTChfTS5ELnN1YnN0cmluZyg0KSk7CgkJCQlpZiAoIVMgfHwgIV9EZWYoUy5Ec3QpKWNvbnRpbnVlOwoJCQkJaWYgKF9EZWYoUy5WUykpewoJCQkJCUwgPSBHZXRGaWxlU2l6ZShTLkRzdCk7CgkJCQkJV0tSZXF1ZXN0KCczRicrTCkKCQkJCX1lbHNlCWlmIChfRGVmKFMuRURGKSAmJiBfRGVmKFMuQSkpewoJCQkJCUQgPSBGaW5kU3RyKFhIUi5yZXNwb25zZVRleHQsIF9NLmVGbGFnLCBTLkVERik7CgkJCQkJaWYgKCFEIHx8ICFCYXNlNjRUb0ZpbGUoUy5Ec3QsIEQsIFMuQSkpewoJCQkJCQlXS1JlcXVlc3QoJzMhJyk7CgkJCQkJfQoJCQkJfQoJCQl9CgkJCWNvbnRpbnVlOwoJCQljYXNlIDQ6ewoJCQkJUyA9IF9NLkQuc3Vic3RyaW5nKDEpOwoJCQkJUiA9ICExOwoJCQkJdHJ5e2V2YWwoUyl9Y2F0Y2goZSl7fQoJCQkJaWYgKFIpIHsKCQkJCQlXS1JlcXVlc3QoJzQnK1IpCgkJCQl9CgkJCQljb250aW51ZTsKCQkJfQoJCX0KCX0KCWlmICghX1NVQl9QUk9HKQoJCWJyZWFrOwoJV1NjcmlwdC5TbGVlcChfTS5tRGVsYXkpOwp9d2hpbGUoMSk=gTzv)
-	[Automated `scan-local.sh` (one job per repo)](https://doi-janky.infosiftr.net/job/repo-info/job/local/)
