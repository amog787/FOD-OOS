.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStack$cPyR7M9kc55JjHdL0Ddj_0AjyyM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityStack;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/io/PrintWriter;

.field public final synthetic f$5:Ljava/lang/Runnable;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Ljava/io/FileDescriptor;

.field public final synthetic f$8:Z

.field public final synthetic f$9:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityStack;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Ljava/lang/String;Ljava/io/FileDescriptor;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$cPyR7M9kc55JjHdL0Ddj_0AjyyM;->f$0:Lcom/android/server/wm/ActivityStack;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$cPyR7M9kc55JjHdL0Ddj_0AjyyM;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$cPyR7M9kc55JjHdL0Ddj_0AjyyM;->f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean p4, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$cPyR7M9kc55JjHdL0Ddj_0AjyyM;->f$3:Z

    iput-object p5, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$cPyR7M9kc55JjHdL0Ddj_0AjyyM;->f$4:Ljava/io/PrintWriter;

    iput-object p6, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$cPyR7M9kc55JjHdL0Ddj_0AjyyM;->f$5:Ljava/lang/Runnable;

    iput-object p7, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$cPyR7M9kc55JjHdL0Ddj_0AjyyM;->f$6:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$cPyR7M9kc55JjHdL0Ddj_0AjyyM;->f$7:Ljava/io/FileDescriptor;

    iput-boolean p9, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$cPyR7M9kc55JjHdL0Ddj_0AjyyM;->f$8:Z

    iput-boolean p10, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$cPyR7M9kc55JjHdL0Ddj_0AjyyM;->f$9:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$cPyR7M9kc55JjHdL0Ddj_0AjyyM;->f$0:Lcom/android/server/wm/ActivityStack;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$cPyR7M9kc55JjHdL0Ddj_0AjyyM;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$cPyR7M9kc55JjHdL0Ddj_0AjyyM;->f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v3, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$cPyR7M9kc55JjHdL0Ddj_0AjyyM;->f$3:Z

    iget-object v4, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$cPyR7M9kc55JjHdL0Ddj_0AjyyM;->f$4:Ljava/io/PrintWriter;

    iget-object v5, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$cPyR7M9kc55JjHdL0Ddj_0AjyyM;->f$5:Ljava/lang/Runnable;

    iget-object v6, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$cPyR7M9kc55JjHdL0Ddj_0AjyyM;->f$6:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$cPyR7M9kc55JjHdL0Ddj_0AjyyM;->f$7:Ljava/io/FileDescriptor;

    iget-boolean v8, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$cPyR7M9kc55JjHdL0Ddj_0AjyyM;->f$8:Z

    iget-boolean v9, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$cPyR7M9kc55JjHdL0Ddj_0AjyyM;->f$9:Z

    move-object v10, p1

    check-cast v10, Lcom/android/server/wm/Task;

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/ActivityStack;->lambda$dumpActivities$11$ActivityStack(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Ljava/lang/String;Ljava/io/FileDescriptor;ZZLcom/android/server/wm/Task;)V

    return-void
.end method
