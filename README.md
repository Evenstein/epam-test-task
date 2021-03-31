<h3>Test task description</h3>
Write a ruby script that:
<div>a. Receives a log as argument (webserver.log is provided)
e.g.: <code>./parser.rb webserver.log</code></div>
<div>b. Returns the following:
  - list of webpages with most page views ordered from most pages views to less page views e.g.:</div>
    <div>/home 90 visits /index 80 visits etc...</div> 
  - list of webpages with most unique page views also ordered
e.g.:
<div>/about/2 8 unique views
/index 5 unique views etc...</div>
<div>Finally, have some fun – Feel free to make changes or design something if you think it meets the
criteria above, but would produce better outcomes and of course, the sooner you return the test, the
quicker we can move the process.</div>

<h3>How to install</h3>
<div>First of all, make sure that the gem <code>bundler</code> is installed:</div>
<pre>
bundle -v
</pre>
<div>If not, it can be easily done using the command:</div>
<pre>
gem install bundler
</pre>
<div>Than just run:</div>
<pre>
bundle install
</pre>
<div>Also don't forget to run:</div>
<pre>
chmod a+x bin/process_file
</pre>

<h3>How to run</h3>
<div>To run app just place a <code>.log</code> file whetever you want and run <code>rake run</code> and add
full path to this file. For example:</div>
<pre>
rake run ~/ruby_app/webserver.log
</pre>

<h3>How to test</h3>
<div>To test run <code>rake test</code> or simple <code>rake</code>.
</div>


<h3>Possible improvements</h3>
<div>- Validates also IPv6</div>
<div>- Create gem and add shedule run</div>
<div>- Send info about visits to marketing</div>
<div>- Filter bad requests and send them to admin</div>  
<div>- Add other features</div>  
