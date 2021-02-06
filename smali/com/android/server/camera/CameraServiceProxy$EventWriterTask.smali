.class Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;
.super Ljava/lang/Object;
.source "CameraServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventWriterTask"
.end annotation


# static fields
.field private static final WRITER_SLEEP_MS:J = 0x64L


# instance fields
.field private mEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/camera/CameraServiceProxy;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;",
            ">;)V"
        }
    .end annotation

    .line 295
    .local p2, "eventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;>;"
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p2, p0, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->mEventList:Ljava/util/ArrayList;

    .line 297
    return-void
.end method

.method private logCameraUsageEvent(Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;)V
    .locals 7
    .param p1, "e"    # Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "facing":I
    iget v1, p1, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown camera facing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraService_proxy"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 326
    :cond_0
    const/4 v0, 0x3

    .line 327
    goto :goto_0

    .line 323
    :cond_1
    const/4 v0, 0x2

    .line 324
    goto :goto_0

    .line 320
    :cond_2
    const/4 v0, 0x1

    .line 321
    nop

    .line 331
    :goto_0
    const/16 v1, 0xe3

    invoke-virtual {p1}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->getDuration()J

    move-result-wide v2

    iget v4, p1, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAPILevel:I

    iget-object v5, p1, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    move v6, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJILjava/lang/String;I)V

    .line 333
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 301
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->mEventList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 302
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 303
    .local v1, "event":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    invoke-direct {p0, v1}, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->logCameraUsageEvent(Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;)V

    .line 305
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    .line 307
    .end local v1    # "event":Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    :goto_2
    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 310
    :cond_1
    return-void
.end method
