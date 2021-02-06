.class final Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;
.super Ljava/lang/Object;
.source "OverlayManagerService.java"

# interfaces
.implements Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverlayChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .locals 0

    .line 904
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/om/OverlayManagerService;
    .param p2, "x1"    # Lcom/android/server/om/OverlayManagerService$1;

    .line 904
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onOverlaysChanged$0$OverlayManagerService$OverlayChangeListener(Ljava/lang/String;I)V
    .locals 19
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 912
    move-object/from16 v1, p1

    invoke-static/range {p1 .. p2}, Landroid/view/OpScreenCompatViewInjector;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 914
    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    move/from16 v15, p2

    invoke-static {v0, v15, v1}, Lcom/android/server/om/OverlayManagerService;->access$1000(Lcom/android/server/om/OverlayManagerService;ILjava/lang/String;)V

    .line 916
    new-instance v0, Landroid/content/Intent;

    .line 917
    const-string/jumbo v3, "package"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v14, v0

    .line 918
    .local v14, "intent":Landroid/content/Intent;
    const/high16 v0, 0x4000000

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 920
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send broadcast "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OverlayManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v6, v14

    move-object/from16 v18, v14

    .end local v14    # "intent":Landroid/content/Intent;
    .local v18, "intent":Landroid/content/Intent;
    move-object v14, v0

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, p2

    :try_start_1
    invoke-interface/range {v3 .. v17}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 930
    goto :goto_0

    .line 928
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v18    # "intent":Landroid/content/Intent;
    .restart local v14    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    move-object/from16 v18, v14

    .line 931
    .end local v14    # "intent":Landroid/content/Intent;
    .restart local v18    # "intent":Landroid/content/Intent;
    :goto_0
    return-void
.end method

.method public onOverlaysChanged(Ljava/lang/String;I)V
    .locals 2
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 908
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->access$900(Lcom/android/server/om/OverlayManagerService;)V

    .line 909
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$RqnNCimIdMg_83f3DU2hmnladDM;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$RqnNCimIdMg_83f3DU2hmnladDM;-><init>(Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 932
    return-void
.end method
