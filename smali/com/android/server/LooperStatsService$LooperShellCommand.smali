.class Lcom/android/server/LooperStatsService$LooperShellCommand;
.super Landroid/os/ShellCommand;
.source "LooperStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LooperStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LooperShellCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LooperStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/LooperStatsService;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/android/server/LooperStatsService$LooperShellCommand;->this$0:Lcom/android/server/LooperStatsService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LooperStatsService;Lcom/android/server/LooperStatsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/LooperStatsService;
    .param p2, "x1"    # Lcom/android/server/LooperStatsService$1;

    .line 227
    invoke-direct {p0, p1}, Lcom/android/server/LooperStatsService$LooperShellCommand;-><init>(Lcom/android/server/LooperStatsService;)V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .line 230
    const-string v0, "enable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/server/LooperStatsService$LooperShellCommand;->this$0:Lcom/android/server/LooperStatsService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/LooperStatsService;->access$300(Lcom/android/server/LooperStatsService;Z)V

    .line 232
    return v1

    .line 233
    :cond_0
    const-string v0, "disable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/server/LooperStatsService$LooperShellCommand;->this$0:Lcom/android/server/LooperStatsService;

    invoke-static {v0, v1}, Lcom/android/server/LooperStatsService;->access$300(Lcom/android/server/LooperStatsService;Z)V

    .line 235
    return v1

    .line 236
    :cond_1
    const-string/jumbo v0, "reset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/android/server/LooperStatsService$LooperShellCommand;->this$0:Lcom/android/server/LooperStatsService;

    invoke-static {v0}, Lcom/android/server/LooperStatsService;->access$400(Lcom/android/server/LooperStatsService;)Lcom/android/internal/os/LooperStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->reset()V

    .line 238
    return v1

    .line 239
    :cond_2
    const-string/jumbo v0, "sampling_interval"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    invoke-virtual {p0}, Lcom/android/server/LooperStatsService$LooperShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v0

    .line 241
    .local v0, "sampling":I
    iget-object v2, p0, Lcom/android/server/LooperStatsService$LooperShellCommand;->this$0:Lcom/android/server/LooperStatsService;

    invoke-static {v2, v0}, Lcom/android/server/LooperStatsService;->access$500(Lcom/android/server/LooperStatsService;I)V

    .line 242
    return v1

    .line 244
    .end local v0    # "sampling":I
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/LooperStatsService$LooperShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .locals 2

    .line 250
    invoke-virtual {p0}, Lcom/android/server/LooperStatsService$LooperShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 251
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v1, "looper_stats commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    const-string v1, "  enable: Enable collecting stats."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    const-string v1, "  disable: Disable collecting stats."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    const-string v1, "  sampling_interval: Change the sampling interval."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    const-string v1, "  reset: Reset stats."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    return-void
.end method
