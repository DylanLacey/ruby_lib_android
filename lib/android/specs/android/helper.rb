# encoding: utf-8

describe 'android/helper' do
  t 'tag_name_to_android' do
    act = tag_name_to_android 'abslist'
    exp = ['android.widget.AbsListView']
    act.must_equal exp

    act = tag_name_to_android 'button'
    exp = %w(android.widget.Button android.widget.ImageButton)
    act.must_equal exp

    msg = ''
    begin; tag_name_to_android 'zz'; rescue Exception => e; msg = e.message; end
    msg.must_equal 'Invalid tag name zz'
  end

  t 'find_eles_attr' do
    act = find_eles_attr :text
    exp = ['API Demos', 'Accessibility', 'Animation', 'App', 'Content', 'Graphics', 'Media', 'NFC', 'OS', 'Preference', 'Text', 'Views']
    act.must_equal exp
  end

  def page_class_data
    (<<-TXT).gsub ' ', ''
          1x android.view.View
          4x android.widget.FrameLayout
          1x android.widget.ImageView
          3x android.widget.LinearLayout
          1x android.widget.ListView
          12x android.widget.TextView
    TXT
  end

  # t 'get_selendroid_inspect' # only works on selendroid
  t 'get_page_class' do
    exp = page_class_data
    act = get_page_class.gsub ' ', ''
    act.must_equal exp
  end

  # t 'page_class' do # tested by get_page_class

  t 'get_android_inspect' do
    get_android_inspect.split("\n").length.must_equal 36
  end

  # t 'get_inspect' do # tested by get_android_inspect
  # t 'page' do # tested by get_android_inspect

  t 'fast_duration' do
    fast_duration.must_equal 0.2
  end
end