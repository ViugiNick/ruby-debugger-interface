# typedef struct
# {
#     #VALUE enabled;
#     VALUE source;
#     VALUE expr;
#     int line;
#     int id;
# } breakpoint_t;

# typedef struct debug_context {
#   debug_frame_t *stack;
#   int stack_size;
#
#   VALUE thread;
#   int thnum;
#   int flags;
#
#   ctx_stop_reason stop_reason;
#   int stop_next;
#   int stop_line;
#   int stop_frame;
#   int thread_pause;
#
#   /* dest_frame uses calced_stack_size for stepping */
#   int dest_frame;
#   int calced_stack_size;
#   int init_stack_size;
#
#   char **init_stack_files;
#
#   char *last_file;
#   int last_line;
# } debug_context_t;
#
# typedef struct debug_frame_t
# {
#     struct debug_frame_t *prev;
#     const char *file;
#     int line;
#     VALUE binding;
#     VALUE self;
# } debug_frame_t;

class Frame
  def initialize(location)
    @location = location
  end

  def binding
    @binding ||= Binding.setup(@location.variables, @location.method, @location.constant_scope)
  end

  def line
    @location.line
  end

  def file
    @location.file
  end

  def self
    @location.receiver
  end
end

class DebuggerAgent
  def step_hook(debug_context_t)
    #breakpoint hook
  end

  def catchpoint_hook(debug_context_t)
    #breakpoint hook
  end

  def catch_exceptions(exception_class_name: String)
    #...
  end

  def register_breakpoint(breakpoint_t)
    #...
  end

  def enable_breakpoint(id)
    #...
  end

  def disable_breakpoint(id)
    #...
  end

  def do_step

  end

  def do_step_into

  end

  def do_step_over

  end

  def do_continue

  end

  def do_pause

  end

  def pop_frame(debug_frame_t)

  end

  #Actions for obtaining variables and evaluating expressions quite easy to implement
  #
  #
end