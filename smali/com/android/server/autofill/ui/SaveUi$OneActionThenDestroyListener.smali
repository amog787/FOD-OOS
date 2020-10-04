.class Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;
.super Ljava/lang/Object;
.source "SaveUi.java"

# interfaces
.implements Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/ui/SaveUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OneActionThenDestroyListener"
.end annotation


# instance fields
.field private mDone:Z

.field private final mRealListener:Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;

.field final synthetic this$0:Lcom/android/server/autofill/ui/SaveUi;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/ui/SaveUi;Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;)V
    .locals 0
    .param p2, "realListener"    # Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;

    .line 101
    iput-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mRealListener:Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;

    .line 103
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/IntentSender;)V
    .locals 2
    .param p1, "listener"    # Landroid/content/IntentSender;

    .line 116
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneTimeListener.onCancel(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mDone:Z

    if-eqz v0, :cond_1

    .line 118
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mRealListener:Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;

    invoke-interface {v0, p1}, Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;->onCancel(Landroid/content/IntentSender;)V

    .line 121
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 125
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneTimeListener.onDestroy(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mDone:Z

    if-eqz v0, :cond_1

    .line 127
    return-void

    .line 129
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mDone:Z

    .line 130
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mRealListener:Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;->onDestroy()V

    .line 131
    return-void
.end method

.method public onSave()V
    .locals 2

    .line 107
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneTimeListener.onSave(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mDone:Z

    if-eqz v0, :cond_1

    .line 109
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mRealListener:Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;->onSave()V

    .line 112
    return-void
.end method
