.class Lcom/android/server/media/MediaSessionRecord$1;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaSessionRecord;->setVolumeTo(Ljava/lang/String;Ljava/lang/String;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;

.field final synthetic val$flags:I

.field final synthetic val$opPackageName:Ljava/lang/String;

.field final synthetic val$pid:I

.field final synthetic val$stream:I

.field final synthetic val$uid:I

.field final synthetic val$volumeValue:I


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionRecord;IIILjava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 326
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$1;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iput p2, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$stream:I

    iput p3, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$volumeValue:I

    iput p4, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$flags:I

    iput-object p5, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$opPackageName:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$uid:I

    iput p7, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$pid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$1;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$200(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManagerInternal;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$stream:I

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$volumeValue:I

    iget v4, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$flags:I

    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$opPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$uid:I

    iget v7, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$pid:I

    invoke-virtual/range {v1 .. v7}, Landroid/media/AudioManagerInternal;->setStreamVolumeForUid(IIILjava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set volume: stream="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$stream:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$volumeValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$1;->val$flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaSessionRecord"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method
