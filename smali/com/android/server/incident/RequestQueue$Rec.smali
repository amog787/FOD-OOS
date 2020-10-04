.class Lcom/android/server/incident/RequestQueue$Rec;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/incident/RequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Rec"
.end annotation


# instance fields
.field public final key:Landroid/os/IBinder;

.field public final runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/incident/RequestQueue;

.field public final value:Z


# direct methods
.method constructor <init>(Lcom/android/server/incident/RequestQueue;Landroid/os/IBinder;ZLjava/lang/Runnable;)V
    .locals 0
    .param p2, "key"    # Landroid/os/IBinder;
    .param p3, "value"    # Z
    .param p4, "runnable"    # Ljava/lang/Runnable;

    .line 71
    iput-object p1, p0, Lcom/android/server/incident/RequestQueue$Rec;->this$0:Lcom/android/server/incident/RequestQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p2, p0, Lcom/android/server/incident/RequestQueue$Rec;->key:Landroid/os/IBinder;

    .line 73
    iput-boolean p3, p0, Lcom/android/server/incident/RequestQueue$Rec;->value:Z

    .line 74
    iput-object p4, p0, Lcom/android/server/incident/RequestQueue$Rec;->runnable:Ljava/lang/Runnable;

    .line 75
    return-void
.end method
