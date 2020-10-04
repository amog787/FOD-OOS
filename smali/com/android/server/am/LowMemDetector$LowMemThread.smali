.class final Lcom/android/server/am/LowMemDetector$LowMemThread;
.super Ljava/lang/Thread;
.source "LowMemDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/LowMemDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LowMemThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/LowMemDetector;


# direct methods
.method private constructor <init>(Lcom/android/server/am/LowMemDetector;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/LowMemDetector;Lcom/android/server/am/LowMemDetector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/LowMemDetector;
    .param p2, "x1"    # Lcom/android/server/am/LowMemDetector$1;

    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/am/LowMemDetector$LowMemThread;-><init>(Lcom/android/server/am/LowMemDetector;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-static {v0}, Lcom/android/server/am/LowMemDetector;->access$100(Lcom/android/server/am/LowMemDetector;)I

    move-result v0

    .line 80
    .local v0, "newPressureState":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/am/LowMemDetector;->access$202(Lcom/android/server/am/LowMemDetector;Z)Z

    .line 83
    nop

    .line 90
    .end local v0    # "newPressureState":I
    return-void

    .line 86
    .restart local v0    # "newPressureState":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-static {v1}, Lcom/android/server/am/LowMemDetector;->access$300(Lcom/android/server/am/LowMemDetector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-static {v2, v0}, Lcom/android/server/am/LowMemDetector;->access$402(Lcom/android/server/am/LowMemDetector;I)I

    .line 88
    monitor-exit v1

    .line 89
    .end local v0    # "newPressureState":I
    goto :goto_0

    .line 88
    .restart local v0    # "newPressureState":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
