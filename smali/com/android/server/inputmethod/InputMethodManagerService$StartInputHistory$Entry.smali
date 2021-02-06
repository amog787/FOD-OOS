.class final Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field mClientBindSequenceNumber:I

.field mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field mImeDisplayId:I

.field mImeId:Ljava/lang/String;

.field mImeTokenString:Ljava/lang/String;

.field mImeUserId:I

.field mRestarting:Z

.field mSequenceNumber:I

.field mStartInputReason:I

.field mTargetDisplayId:I

.field mTargetUserId:I

.field mTargetWindowSoftInputMode:I

.field mTargetWindowString:Ljava/lang/String;

.field mTimestamp:J

.field mWallTime:J


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;)V
    .locals 0
    .param p1, "original"    # Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->set(Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;)V

    .line 1023
    return-void
.end method


# virtual methods
.method set(Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;)V
    .locals 2
    .param p1, "original"    # Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;

    .line 1026
    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mSequenceNumber:I

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mSequenceNumber:I

    .line 1027
    iget-wide v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTimestamp:J

    iput-wide v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mTimestamp:J

    .line 1028
    iget-wide v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mWallTime:J

    iput-wide v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mWallTime:J

    .line 1029
    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mImeUserId:I

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mImeUserId:I

    .line 1032
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mImeToken:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mImeTokenString:Ljava/lang/String;

    .line 1033
    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mImeDisplayId:I

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mImeDisplayId:I

    .line 1034
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mImeId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mImeId:Ljava/lang/String;

    .line 1035
    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mStartInputReason:I

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mStartInputReason:I

    .line 1036
    iget-boolean v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mRestarting:Z

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mRestarting:Z

    .line 1037
    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTargetUserId:I

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mTargetUserId:I

    .line 1038
    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTargetDisplayId:I

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mTargetDisplayId:I

    .line 1041
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTargetWindow:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mTargetWindowString:Ljava/lang/String;

    .line 1042
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 1043
    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTargetWindowSoftInputMode:I

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mTargetWindowSoftInputMode:I

    .line 1044
    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mClientBindSequenceNumber:I

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mClientBindSequenceNumber:I

    .line 1045
    return-void
.end method
