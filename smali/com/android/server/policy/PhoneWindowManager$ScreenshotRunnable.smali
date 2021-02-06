.class public Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ScreenshotRunnable"
.end annotation


# instance fields
.field private mScreenshotSource:I

.field private mScreenshotType:I

.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method protected constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 1674
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1676
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->mScreenshotType:I

    .line 1677
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->mScreenshotSource:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1689
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->mScreenshotType:I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->mScreenshotSource:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->takeScreenshot(II)V

    .line 1690
    return-void
.end method

.method public setScreenshotSource(I)V
    .locals 0
    .param p1, "screenshotSource"    # I

    .line 1684
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->mScreenshotSource:I

    .line 1685
    return-void
.end method

.method public setScreenshotType(I)V
    .locals 0
    .param p1, "screenshotType"    # I

    .line 1680
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->mScreenshotType:I

    .line 1681
    return-void
.end method
