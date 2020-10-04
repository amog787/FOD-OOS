.class Lcom/android/server/wm/KeyguardDisableHandler$1;
.super Ljava/lang/Object;
.source "KeyguardDisableHandler.java"

# interfaces
.implements Lcom/android/server/utils/UserTokenWatcher$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/KeyguardDisableHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/KeyguardDisableHandler;


# direct methods
.method constructor <init>(Lcom/android/server/wm/KeyguardDisableHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/KeyguardDisableHandler;

    .line 114
    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler$1;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquired(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler$1;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/KeyguardDisableHandler;->updateKeyguardEnabled(I)V

    .line 118
    return-void
.end method

.method public released(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler$1;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/KeyguardDisableHandler;->updateKeyguardEnabled(I)V

    .line 123
    return-void
.end method
