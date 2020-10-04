.class final Lcom/android/server/am/ProcessRecord$PackageList;
.super Ljava/lang/Object;
.source "ProcessRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PackageList"
.end annotation


# instance fields
.field final mPkgList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/ProcessRecord;

    .line 127
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord$PackageList;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 137
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$PackageList;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-static {v0}, Lcom/android/server/am/ProcessRecord;->access$000(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->clearPackageList()V

    .line 138
    return-void
.end method

.method containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method get(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    return-object v0
.end method

.method keyAt(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 145
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 131
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$PackageList;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-static {v0}, Lcom/android/server/am/ProcessRecord;->access$000(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->addPackage(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    return-object v0
.end method

.method size()I
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    .locals 1
    .param p1, "index"    # I

    .line 149
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    return-object v0
.end method
