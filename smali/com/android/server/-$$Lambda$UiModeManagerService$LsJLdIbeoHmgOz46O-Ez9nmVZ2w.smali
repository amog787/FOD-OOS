.class public final synthetic Lcom/android/server/-$$Lambda$UiModeManagerService$LsJLdIbeoHmgOz46O-Ez9nmVZ2w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/UiModeManagerService;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/content/res/Resources;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$UiModeManagerService$LsJLdIbeoHmgOz46O-Ez9nmVZ2w;->f$0:Lcom/android/server/UiModeManagerService;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$UiModeManagerService$LsJLdIbeoHmgOz46O-Ez9nmVZ2w;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/-$$Lambda$UiModeManagerService$LsJLdIbeoHmgOz46O-Ez9nmVZ2w;->f$2:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/-$$Lambda$UiModeManagerService$LsJLdIbeoHmgOz46O-Ez9nmVZ2w;->f$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$UiModeManagerService$LsJLdIbeoHmgOz46O-Ez9nmVZ2w;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/-$$Lambda$UiModeManagerService$LsJLdIbeoHmgOz46O-Ez9nmVZ2w;->f$2:Landroid/content/res/Resources;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/UiModeManagerService;->lambda$onStart$1$UiModeManagerService(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method
