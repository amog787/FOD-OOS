.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackupRestoreController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "BackupRestoreController"

.field private static final WIDGET_STATE_VERSION:I = 0x2


# instance fields
.field private final mPrunedApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdatesByHost:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUpdatesByProvider:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .locals 0

    .line 4314
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4326
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mPrunedApps:Ljava/util/HashSet;

    .line 4328
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByProvider:Ljava/util/HashMap;

    .line 4330
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByHost:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p2, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

    .line 4314
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    return-void
.end method

.method private alreadyStashed(Ljava/util/ArrayList;II)Z
    .locals 4
    .param p2, "oldId"    # I
    .param p3, "newId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;",
            ">;II)Z"
        }
    .end annotation

    .line 4768
    .local p1, "stash":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4769
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4770
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    .line 4771
    .local v2, "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    iget v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    if-ne v3, p2, :cond_0

    iget v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    if-ne v3, p3, :cond_0

    .line 4772
    const/4 v3, 0x1

    return v3

    .line 4769
    .end local v2    # "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4775
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private countPendingUpdates(Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;",
            ">;)I"
        }
    .end annotation

    .line 4885
    .local p1, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    const/4 v0, 0x0

    .line 4886
    .local v0, "pending":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4887
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 4888
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    .line 4889
    .local v3, "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    iget-boolean v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    if-nez v4, :cond_0

    .line 4890
    add-int/lit8 v0, v0, 0x1

    .line 4887
    .end local v3    # "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4893
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method private findProviderLocked(Landroid/content/ComponentName;I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 4688
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4689
    .local v0, "providerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4690
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4691
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v3

    if-ne v3, p2, :cond_0

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 4692
    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4693
    return-object v2

    .line 4689
    .end local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4696
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private findRestoredWidgetLocked(ILcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .locals 7
    .param p1, "restoredId"    # I
    .param p2, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p3, "p"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Find restored widget: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupRestoreController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4705
    const/4 v0, 0x0

    if-eqz p3, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 4709
    :cond_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4710
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 4711
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4712
    .local v4, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    if-ne v5, p1, :cond_1

    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v6, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 4713
    invoke-virtual {v5, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v6, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 4714
    invoke-virtual {v5, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   Found at "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4718
    return-object v4

    .line 4710
    .end local v4    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4721
    .end local v3    # "i":I
    :cond_2
    return-object v0

    .line 4706
    .end local v2    # "N":I
    :cond_3
    :goto_1
    return-object v0
.end method

.method private isProviderAndHostInUser(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)Z
    .locals 1
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p2, "userId"    # I

    .line 4850
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_1

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4851
    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4850
    :goto_0
    return v0
.end method

.method private packageNeedsWidgetBackupLocked(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4725
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4726
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 4727
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4730
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-direct {p0, v2, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->isProviderAndHostInUser(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4731
    goto :goto_1

    .line 4734
    :cond_0
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 4736
    return v4

    .line 4739
    :cond_1
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4740
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v3, :cond_2

    invoke-virtual {v3, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4742
    return v4

    .line 4726
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4745
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private parseWidgetIdOptions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 4855
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4856
    .local v0, "options":Landroid/os/Bundle;
    const/4 v1, 0x0

    const-string/jumbo v2, "min_width"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4857
    .local v2, "minWidthString":Ljava/lang/String;
    const/16 v3, 0x10

    if-eqz v2, :cond_0

    .line 4858
    nop

    .line 4859
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 4858
    const-string v5, "appWidgetMinWidth"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4861
    :cond_0
    const-string/jumbo v4, "min_height"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4862
    .local v4, "minHeightString":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 4863
    nop

    .line 4864
    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 4863
    const-string v6, "appWidgetMinHeight"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4866
    :cond_1
    const-string/jumbo v5, "max_width"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4867
    .local v5, "maxWidthString":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 4868
    nop

    .line 4869
    invoke-static {v5, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 4868
    const-string v7, "appWidgetMaxWidth"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4871
    :cond_2
    const-string/jumbo v6, "max_height"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4872
    .local v6, "maxHeightString":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 4873
    nop

    .line 4874
    invoke-static {v6, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 4873
    const-string v8, "appWidgetMaxHeight"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4876
    :cond_3
    const-string v7, "host_category"

    invoke-interface {p1, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4877
    .local v1, "categoryString":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 4878
    nop

    .line 4879
    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 4878
    const-string v7, "appWidgetCategory"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4881
    :cond_4
    return-object v0
.end method

.method private pruneWidgetStateLocked(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4817
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mPrunedApps:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "BackupRestoreController"

    if-nez v0, :cond_3

    .line 4819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pruning widget state for restoring package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4821
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 4822
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4824
    .local v1, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 4825
    .local v2, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4827
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-static {v2, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->access$3500(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v3, :cond_1

    .line 4828
    invoke-virtual {v3, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4832
    :cond_0
    iget-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4833
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4836
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v4, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$4200(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 4837
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {v4, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 4821
    .end local v1    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v2    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4840
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mPrunedApps:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4843
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already pruned "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", continuing normally"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4846
    :goto_1
    return-void
.end method

.method private sendWidgetRestoreBroadcastLocked(Ljava/lang/String;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;[I[ILandroid/os/UserHandle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p3, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p4, "oldIds"    # [I
    .param p5, "newIds"    # [I
    .param p6, "userHandle"    # Landroid/os/UserHandle;

    .line 4797
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4798
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "appWidgetOldIds"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 4799
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 4800
    if-eqz p2, :cond_0

    .line 4801
    iget-object v1, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4802
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v1, v0, p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$4100(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4804
    :cond_0
    if-eqz p3, :cond_1

    .line 4805
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4806
    iget-object v1, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4807
    iget-object v1, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    const-string v2, "hostId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4808
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v1, v0, p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$4100(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4810
    :cond_1
    return-void
.end method

.method private stashHostRestoreUpdateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;II)V
    .locals 3
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "oldId"    # I
    .param p3, "newId"    # I

    .line 4779
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByHost:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4780
    .local v0, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    if-nez v0, :cond_0

    .line 4781
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 4782
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByHost:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4784
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->alreadyStashed(Ljava/util/ArrayList;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID remap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already stashed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupRestoreController"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4789
    return-void

    .line 4792
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4793
    return-void
.end method

.method private stashProviderRestoreUpdateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;II)V
    .locals 3
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "oldId"    # I
    .param p3, "newId"    # I

    .line 4749
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByProvider:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4750
    .local v0, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    if-nez v0, :cond_0

    .line 4751
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 4752
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByProvider:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4755
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->alreadyStashed(Ljava/util/ArrayList;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID remap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already stashed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupRestoreController"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4760
    return-void

    .line 4763
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4764
    return-void
.end method


# virtual methods
.method public getWidgetParticipants(I)Ljava/util/List;
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Getting widget participants for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupRestoreController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4338
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4339
    .local v0, "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4340
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4341
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 4342
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4345
    .local v4, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-direct {p0, v4, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->isProviderAndHostInUser(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4346
    goto :goto_1

    .line 4349
    :cond_0
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4350
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4351
    .local v5, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v5, :cond_1

    .line 4352
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4341
    .end local v4    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v5    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4355
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4356
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 4355
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getWidgetState(Ljava/lang/String;I)[B
    .locals 10
    .param p1, "backedupPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Getting widget state for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupRestoreController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4364
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4365
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4368
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->packageNeedsWidgetBackupLocked(Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 4369
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 4373
    :cond_0
    :try_start_1
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 4374
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4375
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4376
    const-string/jumbo v4, "ws"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4377
    const-string/jumbo v4, "version"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4378
    const-string/jumbo v4, "pkg"

    invoke-interface {v2, v3, v4, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4383
    const/4 v4, 0x0

    .line 4384
    .local v4, "index":I
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 4385
    .local v5, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_3

    .line 4386
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4388
    .local v7, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->shouldBePersisted()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4389
    invoke-virtual {v7, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 4390
    invoke-virtual {v7, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->hostedByPackageForUser(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4391
    :cond_1
    iput v4, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    .line 4392
    invoke-static {v2, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3300(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 4393
    add-int/lit8 v4, v4, 0x1

    .line 4385
    .end local v7    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4397
    .end local v6    # "i":I
    :cond_3
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3400(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v6

    .line 4398
    const/4 v4, 0x0

    .line 4399
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    if-ge v6, v5, :cond_6

    .line 4400
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3400(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 4402
    .local v7, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 4403
    invoke-virtual {v7, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 4404
    invoke-static {v7, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->access$3500(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4405
    :cond_4
    iput v4, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    .line 4406
    invoke-static {v2, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3600(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 4407
    add-int/lit8 v4, v4, 0x1

    .line 4399
    .end local v7    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4413
    .end local v6    # "i":I
    :cond_6
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v6

    .line 4414
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    if-ge v6, v5, :cond_9

    .line 4415
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4417
    .local v7, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4418
    .local v8, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v9, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v9, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_7

    if-eqz v8, :cond_8

    .line 4420
    invoke-virtual {v8, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 4421
    :cond_7
    invoke-static {v2, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3700(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 4414
    .end local v7    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v8    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 4425
    .end local v6    # "i":I
    :cond_9
    const-string/jumbo v6, "ws"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4426
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4430
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "index":I
    .end local v5    # "N":I
    nop

    .line 4431
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4433
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 4427
    :catch_0
    move-exception v2

    .line 4428
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    const-string v4, "BackupRestoreController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to save widget state for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4429
    monitor-exit v1

    return-object v3

    .line 4431
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public restoreFinished(I)V
    .locals 22
    .param p1, "userId"    # I

    .line 4611
    move-object/from16 v15, p0

    move/from16 v14, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restoreFinished for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupRestoreController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4614
    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v14}, Landroid/os/UserHandle;-><init>(I)V

    .line 4615
    .local v7, "userHandle":Landroid/os/UserHandle;
    iget-object v0, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    .line 4617
    :try_start_0
    iget-object v0, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByProvider:Ljava/util/HashMap;

    .line 4618
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 4619
    .local v0, "providerEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v9, v1

    .line 4621
    .local v9, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-object v10, v1

    .line 4622
    .local v10, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    move-object v11, v1

    .line 4623
    .local v11, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    invoke-direct {v15, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->countPendingUpdates(Ljava/util/ArrayList;)I

    move-result v1

    move v12, v1

    .line 4625
    .local v12, "pending":I
    const-string v1, "BackupRestoreController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " pending: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4627
    if-lez v12, :cond_2

    .line 4628
    new-array v1, v12, [I

    move-object v13, v1

    .line 4629
    .local v13, "oldIds":[I
    new-array v1, v12, [I

    move-object/from16 v17, v1

    .line 4630
    .local v17, "newIds":[I
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v6, v1

    .line 4631
    .local v6, "N":I
    const/4 v1, 0x0

    .line 4632
    .local v1, "nextPending":I
    const/4 v3, 0x0

    move/from16 v18, v1

    .end local v1    # "nextPending":I
    .local v3, "i":I
    .local v18, "nextPending":I
    :goto_1
    if-ge v3, v6, :cond_1

    .line 4633
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    .line 4634
    .local v1, "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    iget-boolean v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    if-nez v4, :cond_0

    .line 4635
    iput-boolean v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    .line 4636
    iget v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    aput v4, v13, v18

    .line 4637
    iget v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    aput v4, v17, v18

    .line 4638
    add-int/lit8 v18, v18, 0x1

    .line 4640
    const-string v4, "BackupRestoreController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4632
    .end local v1    # "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x1

    goto :goto_1

    .line 4644
    .end local v3    # "i":I
    :cond_1
    const-string v2, "android.appwidget.action.APPWIDGET_RESTORED"

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v3, v10

    move-object v5, v13

    move/from16 v19, v6

    .end local v6    # "N":I
    .local v19, "N":I
    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->sendWidgetRestoreBroadcastLocked(Ljava/lang/String;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;[I[ILandroid/os/UserHandle;)V

    .line 4648
    .end local v9    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;"
    .end local v10    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v11    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    .end local v12    # "pending":I
    .end local v13    # "oldIds":[I
    .end local v17    # "newIds":[I
    .end local v18    # "nextPending":I
    .end local v19    # "N":I
    :cond_2
    goto/16 :goto_0

    .line 4651
    :cond_3
    iget-object v1, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByHost:Ljava/util/HashMap;

    .line 4652
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 4653
    .local v1, "hostEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4654
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 4655
    .local v4, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_7

    .line 4656
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 4657
    .local v5, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    invoke-direct {v15, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->countPendingUpdates(Ljava/util/ArrayList;)I

    move-result v6

    .line 4659
    .local v6, "pending":I
    const-string v8, "BackupRestoreController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Host "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " pending: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4661
    if-lez v6, :cond_6

    .line 4662
    new-array v8, v6, [I

    move-object/from16 v17, v8

    .line 4663
    .local v17, "oldIds":[I
    new-array v8, v6, [I

    move-object/from16 v18, v8

    .line 4664
    .local v18, "newIds":[I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v13, v8

    .line 4665
    .local v13, "N":I
    const/4 v8, 0x0

    .line 4666
    .local v8, "nextPending":I
    const/4 v9, 0x0

    move/from16 v20, v8

    .end local v8    # "nextPending":I
    .local v9, "i":I
    .local v20, "nextPending":I
    :goto_3
    if-ge v9, v13, :cond_5

    .line 4667
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    .line 4668
    .local v8, "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    iget-boolean v10, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    if-nez v10, :cond_4

    .line 4669
    const/4 v12, 0x1

    iput-boolean v12, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    .line 4670
    iget v10, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    aput v10, v17, v20

    .line 4671
    iget v10, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    aput v10, v18, v20

    .line 4672
    add-int/lit8 v20, v20, 0x1

    .line 4674
    const-string v10, "BackupRestoreController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "   "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " => "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4666
    .end local v8    # "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 4678
    .end local v9    # "i":I
    :cond_5
    const-string v9, "android.appwidget.action.APPWIDGET_HOST_RESTORED"

    const/4 v10, 0x0

    move-object/from16 v8, p0

    move-object v11, v4

    const/16 v19, 0x1

    move-object/from16 v12, v17

    move/from16 v21, v13

    .end local v13    # "N":I
    .local v21, "N":I
    move-object/from16 v13, v18

    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->sendWidgetRestoreBroadcastLocked(Ljava/lang/String;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;[I[ILandroid/os/UserHandle;)V

    goto :goto_4

    .line 4661
    .end local v17    # "oldIds":[I
    .end local v18    # "newIds":[I
    .end local v20    # "nextPending":I
    .end local v21    # "N":I
    :cond_6
    const/16 v19, 0x1

    goto :goto_4

    .line 4655
    .end local v5    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    .end local v6    # "pending":I
    :cond_7
    const/16 v19, 0x1

    .line 4683
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;"
    .end local v4    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :goto_4
    move/from16 v14, p1

    goto/16 :goto_2

    .line 4684
    .end local v0    # "providerEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;>;"
    .end local v1    # "hostEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;>;"
    :cond_8
    monitor-exit v16

    .line 4685
    return-void

    .line 4684
    :catchall_0
    move-exception v0

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public restoreStarting(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 4438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restore starting for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupRestoreController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4441
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4445
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mPrunedApps:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 4446
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByProvider:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 4447
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByHost:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 4448
    monitor-exit v0

    .line 4449
    return-void

    .line 4448
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public restoreWidgetState(Ljava/lang/String;[BI)V
    .locals 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restoredState"    # [B
    .param p3, "userId"    # I

    .line 4453
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring widget state for user:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "BackupRestoreController"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4457
    new-instance v0, Ljava/io/ByteArrayInputStream;

    move-object/from16 v4, p2

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v5, v0

    .line 4460
    .local v5, "stream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 4463
    .local v6, "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 4465
    .local v7, "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v8, v0

    .line 4466
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4468
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 4471
    :goto_0
    :try_start_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 4472
    .local v0, "type":I
    const/4 v11, 0x2

    if-ne v0, v11, :cond_c

    .line 4473
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 4474
    .local v12, "tag":Ljava/lang/String;
    const-string/jumbo v13, "ws"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    const/4 v14, 0x0

    if-eqz v13, :cond_2

    .line 4475
    :try_start_2
    const-string/jumbo v13, "version"

    invoke-interface {v8, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 4477
    .local v13, "version":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 4478
    .local v15, "versionNumber":I
    if-le v15, v11, :cond_0

    .line 4479
    const-string v10, "BackupRestoreController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to process state version "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4480
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4602
    iget-object v9, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v9, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$4000(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 4480
    return-void

    .line 4484
    :cond_0
    :try_start_3
    const-string/jumbo v11, "pkg"

    invoke-interface {v8, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4485
    .local v11, "pkg":Ljava/lang/String;
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 4486
    const-string v10, "BackupRestoreController"

    const-string v14, "Package mismatch in ws"

    invoke-static {v10, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4487
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4602
    iget-object v9, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v9, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$4000(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 4487
    return-void

    .line 4489
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v13    # "version":Ljava/lang/String;
    .end local v15    # "versionNumber":I
    :cond_1
    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    goto/16 :goto_4

    .line 4598
    .end local v0    # "type":I
    .end local v12    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    goto/16 :goto_5

    .line 4489
    .restart local v0    # "type":I
    .restart local v12    # "tag":Ljava/lang/String;
    :cond_2
    :try_start_4
    const-string/jumbo v11, "p"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v11, :cond_4

    .line 4490
    :try_start_5
    const-string/jumbo v11, "pkg"

    invoke-interface {v8, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4491
    .restart local v11    # "pkg":Ljava/lang/String;
    const-string v13, "cl"

    invoke-interface {v8, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 4499
    .local v13, "cl":Ljava/lang/String;
    new-instance v15, Landroid/content/ComponentName;

    invoke-direct {v15, v11, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4501
    .local v15, "componentName":Landroid/content/ComponentName;
    invoke-direct {v1, v15, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->findProviderLocked(Landroid/content/ComponentName;I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v16

    .line 4502
    .local v16, "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v16, :cond_3

    .line 4503
    new-instance v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-direct {v10, v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 4504
    .end local v16    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .local v10, "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    new-instance v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v4, -0x1

    move-object/from16 v18, v5

    const/4 v5, 0x0

    .end local v5    # "stream":Ljava/io/ByteArrayInputStream;
    .local v18, "stream":Ljava/io/ByteArrayInputStream;
    :try_start_6
    invoke-direct {v14, v4, v15, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    iput-object v14, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 4505
    new-instance v4, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v4}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    iput-object v4, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 4506
    iget-object v4, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v15, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 4507
    const/4 v4, 0x1

    iput-boolean v4, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 4508
    iget-object v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4502
    .end local v10    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v18    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v16    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_3
    move-object/from16 v18, v5

    .end local v5    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v18    # "stream":Ljava/io/ByteArrayInputStream;
    move-object/from16 v10, v16

    .line 4511
    .end local v16    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v10    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :goto_1
    const-string v4, "BackupRestoreController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   provider "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4513
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 4514
    move-object/from16 v17, v6

    move-object/from16 v19, v7

    .end local v10    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v13    # "cl":Ljava/lang/String;
    .end local v15    # "componentName":Landroid/content/ComponentName;
    goto/16 :goto_4

    .line 4598
    .end local v0    # "type":I
    .end local v12    # "tag":Ljava/lang/String;
    .end local v18    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "stream":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    .end local v5    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v18    # "stream":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_5

    .line 4514
    .end local v18    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "type":I
    .restart local v5    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v12    # "tag":Ljava/lang/String;
    :cond_4
    move-object/from16 v18, v5

    .end local v5    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v18    # "stream":Ljava/io/ByteArrayInputStream;
    :try_start_7
    const-string v4, "h"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    const/16 v5, 0x10

    if-eqz v4, :cond_5

    .line 4518
    :try_start_8
    const-string/jumbo v4, "pkg"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4520
    .local v4, "pkg":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v10, v4, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2300(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/lang/String;I)I

    move-result v10

    .line 4521
    .local v10, "uid":I
    const-string v11, "id"

    .line 4522
    const/4 v13, 0x0

    invoke-interface {v8, v13, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4521
    invoke-static {v11, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 4524
    .local v5, "hostId":I
    new-instance v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-direct {v11, v10, v5, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 4525
    .local v11, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    iget-object v13, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v13, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3800(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v13

    .line 4526
    .local v13, "h":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4529
    const-string v14, "BackupRestoreController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v4

    .end local v4    # "pkg":Ljava/lang/String;
    .local v16, "pkg":Ljava/lang/String;
    const-string v4, "   host["

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: {"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 4532
    move-object/from16 v17, v6

    move-object/from16 v19, v7

    .end local v5    # "hostId":I
    .end local v10    # "uid":I
    .end local v11    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .end local v13    # "h":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v16    # "pkg":Ljava/lang/String;
    goto/16 :goto_4

    .line 4598
    .end local v0    # "type":I
    .end local v12    # "tag":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    goto/16 :goto_5

    .line 4532
    .restart local v0    # "type":I
    .restart local v12    # "tag":Ljava/lang/String;
    :cond_5
    :try_start_9
    const-string v4, "g"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4533
    const-string v4, "id"

    .line 4534
    const/4 v10, 0x0

    invoke-interface {v8, v10, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4533
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 4535
    .local v4, "restoredId":I
    const-string v10, "h"

    .line 4536
    const/4 v11, 0x0

    invoke-interface {v8, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4535
    invoke-static {v10, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 4537
    .local v10, "hostIndex":I
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 4538
    .local v11, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    const/4 v13, 0x0

    .line 4539
    .local v13, "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    const-string/jumbo v14, "p"

    const/4 v15, 0x0

    invoke-interface {v8, v15, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 4540
    .local v14, "prov":Ljava/lang/String;
    if-eqz v14, :cond_6

    .line 4543
    :try_start_a
    invoke-static {v14, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 4544
    .local v5, "which":I
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object v13, v15

    .line 4550
    .end local v5    # "which":I
    :cond_6
    :try_start_b
    iget-object v5, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-direct {v1, v5, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->pruneWidgetStateLocked(Ljava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 4551
    if-eqz v13, :cond_7

    .line 4552
    :try_start_c
    iget-object v5, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->pruneWidgetStateLocked(Ljava/lang/String;I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 4557
    :cond_7
    :try_start_d
    invoke-direct {v1, v4, v11, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->findRestoredWidgetLocked(ILcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v5

    .line 4558
    .local v5, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v5, :cond_9

    .line 4559
    new-instance v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-object/from16 v16, v5

    const/4 v5, 0x0

    .end local v5    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .local v16, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-direct {v15, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    move-object v5, v15

    .line 4560
    .end local v16    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .restart local v5    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v15, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v15, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3900(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)I

    move-result v15

    iput v15, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 4561
    iput v4, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    .line 4562
    invoke-direct {v1, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->parseWidgetIdOptions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v15

    iput-object v15, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 4563
    iput-object v11, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 4564
    iget-object v15, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v15, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4565
    iput-object v13, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4566
    iget-object v15, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v15, :cond_8

    .line 4567
    :try_start_e
    iget-object v15, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v15, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 4570
    :cond_8
    :try_start_f
    const-string v15, "BackupRestoreController"
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    move-object/from16 v17, v6

    .end local v6    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .local v17, "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    :try_start_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    move-object/from16 v19, v7

    .end local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .local v19, "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :try_start_11
    const-string v7, "New restored id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " now "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4573
    iget-object v6, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {v6, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    goto :goto_2

    .line 4598
    .end local v0    # "type":I
    .end local v4    # "restoredId":I
    .end local v5    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v10    # "hostIndex":I
    .end local v11    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v14    # "prov":Ljava/lang/String;
    .end local v19    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :catchall_3
    move-exception v0

    move-object/from16 v19, v7

    .end local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v19    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    goto/16 :goto_5

    .line 4558
    .end local v17    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v19    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v0    # "type":I
    .restart local v4    # "restoredId":I
    .restart local v5    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .restart local v6    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v10    # "hostIndex":I
    .restart local v11    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .restart local v12    # "tag":Ljava/lang/String;
    .restart local v13    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v14    # "prov":Ljava/lang/String;
    :cond_9
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    .line 4575
    .end local v6    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v17    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v19    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :goto_2
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v6, :cond_a

    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v6, :cond_a

    .line 4576
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget v7, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-direct {v1, v6, v4, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->stashProviderRestoreUpdateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;II)V

    goto :goto_3

    .line 4579
    :cond_a
    const-string v6, "BackupRestoreController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Missing provider for restored widget "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4581
    :goto_3
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget v7, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-direct {v1, v6, v4, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->stashHostRestoreUpdateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;II)V

    .line 4584
    const-string v6, "BackupRestoreController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "   instance: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " -> "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " :: p="

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4532
    .end local v4    # "restoredId":I
    .end local v5    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v10    # "hostIndex":I
    .end local v11    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v13    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v14    # "prov":Ljava/lang/String;
    .end local v17    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v19    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v6    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :cond_b
    move-object/from16 v17, v6

    move-object/from16 v19, v7

    .end local v6    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v17    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v19    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    goto :goto_4

    .line 4598
    .end local v0    # "type":I
    .end local v12    # "tag":Ljava/lang/String;
    .end local v17    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v19    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v6    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :catchall_4
    move-exception v0

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    .end local v6    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v17    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v19    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    goto :goto_5

    .line 4472
    .end local v17    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v18    # "stream":Ljava/io/ByteArrayInputStream;
    .end local v19    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v0    # "type":I
    .local v5, "stream":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :cond_c
    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    .line 4590
    .end local v5    # "stream":Ljava/io/ByteArrayInputStream;
    .end local v6    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v17    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v18    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v19    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :goto_4
    const/4 v4, 0x1

    if-ne v0, v4, :cond_d

    .line 4598
    .end local v0    # "type":I
    monitor-exit v9

    .line 4602
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v19    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    goto :goto_7

    .line 4590
    .restart local v0    # "type":I
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v19    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :cond_d
    move-object/from16 v4, p2

    move-object/from16 v6, v17

    move-object/from16 v5, v18

    move-object/from16 v7, v19

    goto/16 :goto_0

    .line 4598
    .end local v0    # "type":I
    .end local v17    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v18    # "stream":Ljava/io/ByteArrayInputStream;
    .end local v19    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v5    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :catchall_5
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    .end local v5    # "stream":Ljava/io/ByteArrayInputStream;
    .end local v6    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v17    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v18    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v19    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :goto_5
    monitor-exit v9
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .end local v18    # "stream":Ljava/io/ByteArrayInputStream;
    .end local p0    # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "restoredState":[B
    .end local p3    # "userId":I
    :try_start_12
    throw v0
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 4599
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v19    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v18    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "restoredState":[B
    .restart local p3    # "userId":I
    :catch_0
    move-exception v0

    goto :goto_6

    .line 4598
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v19    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :catchall_6
    move-exception v0

    goto :goto_5

    .line 4602
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v18    # "stream":Ljava/io/ByteArrayInputStream;
    .end local v19    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v5    # "stream":Ljava/io/ByteArrayInputStream;
    :catchall_7
    move-exception v0

    move-object/from16 v18, v5

    .end local v5    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v18    # "stream":Ljava/io/ByteArrayInputStream;
    goto :goto_8

    .line 4599
    .end local v18    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "stream":Ljava/io/ByteArrayInputStream;
    :catch_1
    move-exception v0

    move-object/from16 v18, v5

    .line 4600
    .end local v5    # "stream":Ljava/io/ByteArrayInputStream;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "stream":Ljava/io/ByteArrayInputStream;
    :goto_6
    :try_start_13
    const-string v4, "BackupRestoreController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to restore widget state for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 4602
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$4000(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 4603
    nop

    .line 4604
    return-void

    .line 4602
    :catchall_8
    move-exception v0

    :goto_8
    iget-object v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v4, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$4000(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    throw v0
.end method
