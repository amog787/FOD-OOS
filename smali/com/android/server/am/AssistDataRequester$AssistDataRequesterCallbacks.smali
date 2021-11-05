.class public interface abstract Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;
.super Ljava/lang/Object;
.source "AssistDataRequester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AssistDataRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AssistDataRequesterCallbacks"
.end annotation


# virtual methods
.method public abstract canHandleReceivedAssistDataLocked()Z
.end method

.method public onAssistDataReceivedLocked(Landroid/os/Bundle;II)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "activityIndex"    # I
    .param p3, "activityCount"    # I

    .line 92
    return-void
.end method

.method public onAssistRequestCompleted()V
    .locals 0

    .line 115
    return-void
.end method

.method public onAssistScreenshotReceivedLocked(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;

    .line 104
    return-void
.end method
