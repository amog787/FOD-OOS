.class public Lcom/android/server/coverage/CoverageService;
.super Landroid/os/Binder;
.source "CoverageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/coverage/CoverageService$CoverageCommand;
    }
.end annotation


# static fields
.field public static final COVERAGE_SERVICE:Ljava/lang/String; = "coverage"

.field public static final ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    const/4 v0, 0x1

    .line 47
    .local v0, "shouldEnable":Z
    :try_start_0
    const-string/jumbo v1, "org.jacoco.agent.rt.RT"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const/4 v0, 0x0

    .line 51
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    sput-boolean v0, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    .line 52
    .end local v0    # "shouldEnable":Z
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 60
    new-instance v0, Lcom/android/server/coverage/CoverageService$CoverageCommand;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/coverage/CoverageService$CoverageCommand;-><init>(Lcom/android/server/coverage/CoverageService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 61
    return-void
.end method
