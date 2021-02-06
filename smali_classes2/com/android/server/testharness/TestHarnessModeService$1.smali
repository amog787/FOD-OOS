.class Lcom/android/server/testharness/TestHarnessModeService$1;
.super Landroid/os/Binder;
.source "TestHarnessModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/testharness/TestHarnessModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/testharness/TestHarnessModeService;


# direct methods
.method constructor <init>(Lcom/android/server/testharness/TestHarnessModeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/testharness/TestHarnessModeService;

    .line 277
    iput-object p1, p0, Lcom/android/server/testharness/TestHarnessModeService$1;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

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

    .line 281
    new-instance v0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;

    iget-object v1, p0, Lcom/android/server/testharness/TestHarnessModeService$1;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;-><init>(Lcom/android/server/testharness/TestHarnessModeService;Lcom/android/server/testharness/TestHarnessModeService$1;)V

    .line 282
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 283
    return-void
.end method
