.class Lcom/android/server/pm/PackageManagerShellCommand$4;
.super Ljava/lang/Object;
.source "PackageManagerShellCommand.java"

# interfaces
.implements Landroid/content/Intent$CommandOptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerShellCommand;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerShellCommand;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerShellCommand;

    .line 883
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand$4;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleOption(Ljava/lang/String;Landroid/os/ShellCommand;)Z
    .locals 3
    .param p1, "opt"    # Ljava/lang/String;
    .param p2, "cmd"    # Landroid/os/ShellCommand;

    .line 886
    const-string v0, "--user"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$4;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    invoke-virtual {p2}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 888
    return v1

    .line 889
    :cond_0
    const-string v0, "--brief"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$4;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    iput-boolean v1, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    .line 891
    return v1

    .line 892
    :cond_1
    const-string v0, "--components"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 893
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$4;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    iput-boolean v1, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    .line 894
    return v1

    .line 895
    :cond_2
    const-string v0, "--query-flags"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 896
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$4;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    invoke-virtual {p2}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    .line 897
    return v1

    .line 899
    :cond_3
    const/4 v0, 0x0

    return v0
.end method
