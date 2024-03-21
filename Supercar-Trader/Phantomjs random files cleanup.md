

```shell
find / -type f \\( -name \'home-init-01.out\' -o -name \'mem-leak-insurance.out\' -o -name \'request-error-01.out\' -o -name \'search-01.out\' -o -name \'sell-car-01.out\' -o -name \'sell-car-02.out\' -o -name \'sessions-01.out\' -o -name \'sessions-02.out\' -o -name \'sessions-03.out\' -o -name \'sessions-04.out\' -o -name \'slow-query-01.out\' -o -name \'slow-query-02.out\' -o -name \'slow-query-03.out\' -o -name \'slow-query-04.out\' \\) -exec rm {} \\;
```
