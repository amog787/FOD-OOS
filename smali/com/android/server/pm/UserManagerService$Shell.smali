.class Lcom/android/server/pm/UserManagerService$Shell;
.super Landroid/os/ShellCommand;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Shell"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .locals 0

    .line 5396
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$Shell;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p2, "x1"    # Lcom/android/server/pm/UserManagerService$1;

    .line 5396
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService$Shell;-><init>(Lcom/android/server/pm/UserManagerService;)V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .line 5399
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$Shell;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/UserManagerService;->onShellCommand(Lcom/android/server/pm/UserManagerService$Shell;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .locals 2

    .line 5404
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 5405
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "User manager (user) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5406
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5407
    const-string v1, "    Prints this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5408
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5409
    const-string v1, "  list [-v] [-all]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5410
    const-string v1, "    Prints all users on the system."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5411
    const-string v1, "  report-system-user-package-whitelist-problems [-v | --verbose] [--critical-only] [--mode MODE]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5413
    const-string v1, "    Reports all issues on user-type package whitelist XML files. Options:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5414
    const-string v1, "    -v | --verbose : shows extra info, like number of issues"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5415
    const-string v1, "    --critical-only: show only critical issues, excluding warnings"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5416
    const-string v1, "    --mode MODE: shows what errors would be if device used mode MODE (where MODE is the whitelist mode integer as defined by config_userTypePackageWhitelistMode)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5419
    return-void
.end method
