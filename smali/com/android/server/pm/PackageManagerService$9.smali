.class Lcom/android/server/pm/PackageManagerService$9;
.super Landroid/content/BroadcastReceiver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 22207
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 22210
    if-nez p2, :cond_0

    .line 22211
    return-void

    .line 22213
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 22214
    .local v0, "data":Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 22215
    return-void

    .line 22217
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 22218
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 22219
    return-void

    .line 22221
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 22222
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v2, :cond_3

    .line 22223
    return-void

    .line 22225
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Ljava/util/ArrayList;

    .line 22227
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22228
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v7

    .line 22225
    const-string v8, "android.intent.action.OVERLAY_CHANGED"

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;)V

    .line 22230
    return-void
.end method
