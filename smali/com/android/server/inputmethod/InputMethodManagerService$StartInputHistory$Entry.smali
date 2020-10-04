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

    .line 865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 866
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->set(Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;)V

    .line 867
    return-void
.end method


# virtual methods
.method set(Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;)V
    .locals 2
    .param p1, "original"    # Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;

    .line 870
    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mSequenceNumber:I

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mSequenceNumber:I

    .line 871
    iget-wide v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTimestamp:J

    iput-wide v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mTimestamp:J

    .line 872
    iget-wide v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mWallTime:J

    iput-wide v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mWallTime:J

    .line 873
    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mImeUserId:I

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mImeUserId:I

    .line 876
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mImeToken:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mImeTokenString:Ljava/lang/String;

    .line 877
    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mImeDisplayId:I

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mImeDisplayId:I

    .line 878
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mImeId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mImeId:Ljava/lang/String;

    .line 879
    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mStartInputReason:I

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mStartInputReason:I

    .line 880
    iget-boolean v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mRestarting:Z

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mRestarting:Z

    .line 881
    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTargetUserId:I

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mTargetUserId:I

    .line 882
    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTargetDisplayId:I

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mTargetDisplayId:I

    .line 885
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTargetWindow:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mTargetWindowString:Ljava/lang/String;

    .line 886
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 887
    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mTargetWindowSoftInputMode:I

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mTargetWindowSoftInputMode:I

    .line 888
    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputInfo;->mClientBindSequenceNumber:I

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$StartInputHistory$Entry;->mClientBindSequenceNumber:I

    .line 889
    return-void
.end method
