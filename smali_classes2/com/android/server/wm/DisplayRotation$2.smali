.class Lcom/android/server/wm/DisplayRotation$2;
.super Ljava/lang/Object;
.source "DisplayRotation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/DisplayRotation;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayWindowSettings;Landroid/content/Context;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayRotation;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayRotation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/DisplayRotation;

    .line 218
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$2;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 221
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "WindowManager"

    const-string v1, "DisplayRotation(): start observe for SettingsObserver"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$2;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->access$200(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation$SettingsObserver;->observe()V

    .line 225
    return-void
.end method
