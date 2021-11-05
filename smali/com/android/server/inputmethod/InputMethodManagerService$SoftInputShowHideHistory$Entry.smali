.class final Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field final mClientState:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

.field final mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field final mFocusedWindowName:Ljava/lang/String;

.field final mFocusedWindowSoftInputMode:I

.field final mImeControlTargetName:Ljava/lang/String;

.field final mImeTargetNameFromWm:Ljava/lang/String;

.field final mInFullscreenMode:Z

.field final mReason:I

.field final mRequestWindowName:Ljava/lang/String;

.field final mSequenceNumber:I

.field final mTimestamp:J

.field final mWallTime:J


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "client"    # Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "focusedWindowName"    # Ljava/lang/String;
    .param p4, "softInputMode"    # I
    .param p5, "reason"    # I
    .param p6, "inFullscreenMode"    # Z
    .param p7, "requestWindowName"    # Ljava/lang/String;
    .param p8, "imeControlTargetName"    # Ljava/lang/String;
    .param p9, "imeTargetName"    # Ljava/lang/String;

    .line 874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 850
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory;->access$000()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mSequenceNumber:I

    .line 875
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mClientState:Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    .line 876
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 877
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mFocusedWindowName:Ljava/lang/String;

    .line 878
    iput p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mFocusedWindowSoftInputMode:I

    .line 879
    iput p5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mReason:I

    .line 880
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mTimestamp:J

    .line 881
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mWallTime:J

    .line 882
    iput-boolean p6, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mInFullscreenMode:Z

    .line 883
    iput-object p7, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mRequestWindowName:Ljava/lang/String;

    .line 884
    iput-object p8, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mImeControlTargetName:Ljava/lang/String;

    .line 885
    iput-object p9, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SoftInputShowHideHistory$Entry;->mImeTargetNameFromWm:Ljava/lang/String;

    .line 886
    return-void
.end method
