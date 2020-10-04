.class public Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;
.super Ljava/lang/Object;
.source "DisplayWhiteBalanceSettings.java"

# interfaces
.implements Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings$DisplayWhiteBalanceSettingsHandler;
    }
.end annotation


# static fields
.field private static final MSG_SET_ACTIVE:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "DisplayWhiteBalanceSettings"


# instance fields
.field private mActive:Z

.field private mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

.field private final mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field protected mLoggingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->validateArguments(Landroid/content/Context;Landroid/os/Handler;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mLoggingEnabled:Z

    .line 73
    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings$DisplayWhiteBalanceSettingsHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings$DisplayWhiteBalanceSettingsHandler;-><init>(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mHandler:Landroid/os/Handler;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    .line 77
    const-class v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    iput-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 78
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->isDisplayWhiteBalanceEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->setEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-virtual {v0, p0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->setDisplayWhiteBalanceListener(Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;)Z

    move-result v0

    .line 80
    .local v0, "isActive":Z
    invoke-direct {p0, v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->setActive(Z)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;
    .param p1, "x1"    # Z

    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->setActive(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;)Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    .line 39
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;
    .param p1, "x1"    # Z

    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->setEnabled(Z)V

    return-void
.end method

.method private setActive(Z)V
    .locals 2
    .param p1, "active"    # Z

    .line 165
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mActive:Z

    if-ne v0, p1, :cond_0

    .line 166
    return-void

    .line 168
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Active: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayWhiteBalanceSettings"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mActive:Z

    .line 172
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    if-eqz v0, :cond_2

    .line 173
    invoke-interface {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;->updateWhiteBalance()V

    .line 175
    :cond_2
    return-void
.end method

.method private setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 152
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mEnabled:Z

    if-ne v0, p1, :cond_0

    .line 153
    return-void

    .line 155
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayWhiteBalanceSettings"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mEnabled:Z

    .line 159
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    if-eqz v0, :cond_2

    .line 160
    invoke-interface {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;->updateWhiteBalance()V

    .line 162
    :cond_2
    return-void
.end method

.method private validateArguments(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 147
    const-string v0, "context must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v0, "handler must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 131
    const-string v0, "DisplayWhiteBalanceSettings"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLoggingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mLoggingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mActive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDisplayWhiteBalanceStatusChanged(Z)V
    .locals 3
    .param p1, "activated"    # Z

    .line 142
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 143
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 144
    return-void
.end method

.method public setCallbacks(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;)Z
    .locals 1
    .param p1, "callbacks"    # Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    .line 92
    iget-object v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    if-ne v0, p1, :cond_0

    .line 93
    const/4 v0, 0x0

    return v0

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mCallbacks:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public setLoggingEnabled(Z)Z
    .locals 1
    .param p1, "loggingEnabled"    # Z

    .line 108
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_0

    .line 109
    const/4 v0, 0x0

    return v0

    .line 111
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->mLoggingEnabled:Z

    .line 112
    const/4 v0, 0x1

    return v0
.end method
