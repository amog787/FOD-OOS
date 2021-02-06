.class Lcom/android/server/am/ActivityManagerService$CpuBinder$1$1;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService$CpuBinder$1;->dumpCritical(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$CpuBinder$1;

.field final synthetic val$pw:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$CpuBinder$1;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/am/ActivityManagerService$CpuBinder$1;

    .line 2601
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder$1$1;->this$1:Lcom/android/server/am/ActivityManagerService$CpuBinder$1;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder$1$1;->val$pw:Ljava/io/PrintWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2606
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder$1$1;->val$pw:Ljava/io/PrintWriter;

    invoke-static {v0}, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->printCpuTrack(Ljava/io/PrintWriter;)V

    .line 2608
    return-void
.end method
