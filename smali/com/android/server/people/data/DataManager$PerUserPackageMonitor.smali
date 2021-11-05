.class Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerUserPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method private constructor <init>(Lcom/android/server/people/data/DataManager;)V
    .locals 0

    .line 957
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/DataManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/people/data/DataManager;
    .param p2, "x1"    # Lcom/android/server/people/data/DataManager$1;

    .line 957
    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;-><init>(Lcom/android/server/people/data/DataManager;)V

    return-void
.end method


# virtual methods
.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 961
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    .line 963
    invoke-virtual {p0}, Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;->getChangingUserId()I

    move-result v0

    .line 964
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {v1, v0}, Lcom/android/server/people/data/DataManager;->access$1200(Lcom/android/server/people/data/DataManager;I)Lcom/android/server/people/data/UserData;

    move-result-object v1

    .line 965
    .local v1, "userData":Lcom/android/server/people/data/UserData;
    if-eqz v1, :cond_0

    .line 966
    invoke-virtual {v1, p1}, Lcom/android/server/people/data/UserData;->deletePackageData(Ljava/lang/String;)V

    .line 968
    :cond_0
    return-void
.end method
