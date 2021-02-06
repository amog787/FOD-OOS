.class final Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PackageAssociationInfo"
.end annotation


# instance fields
.field private final mAllowedPackageAssociations:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDebuggable:Z

.field private final mSourcePackage:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Landroid/util/ArraySet;Z)V
    .locals 0
    .param p2, "sourcePackage"    # Ljava/lang/String;
    .param p4, "isDebuggable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 932
    .local p3, "allowedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 933
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mSourcePackage:Ljava/lang/String;

    .line 934
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mAllowedPackageAssociations:Landroid/util/ArraySet;

    .line 935
    iput-boolean p4, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mIsDebuggable:Z

    .line 936
    return-void
.end method


# virtual methods
.method getAllowedPackageAssociations()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 955
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mAllowedPackageAssociations:Landroid/util/ArraySet;

    return-object v0
.end method

.method isDebuggable()Z
    .locals 1

    .line 947
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mIsDebuggable:Z

    return v0
.end method

.method isPackageAssociationAllowed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "targetPackage"    # Ljava/lang/String;

    .line 943
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mIsDebuggable:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mAllowedPackageAssociations:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method setDebuggable(Z)V
    .locals 0
    .param p1, "isDebuggable"    # Z

    .line 951
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerService$PackageAssociationInfo;->mIsDebuggable:Z

    .line 952
    return-void
.end method
