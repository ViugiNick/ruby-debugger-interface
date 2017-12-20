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

  def catchExceptions(exception_class_name: String)
    #...
  end

  def registerBreakpoint(breakpoint_t)
    #...
  end

  def enableBreakpoint(id)
    #...
  end

  def disableBreakpoint(id)
    #...
  end

  def do_step

  end

  def do_step_into

  end

  def do_step_over

  end
end