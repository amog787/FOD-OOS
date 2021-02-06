.class final Lcom/android/server/appop/AppOpsService$Ops;
.super Landroid/util/SparseArray;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Ops"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Lcom/android/server/appop/AppOpsService$Op;",
        ">;"
    }
.end annotation


# instance fields
.field bypass:Landroid/app/AppOpsManager$RestrictionBypass;

.field final knownAttributionTags:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final packageName:Ljava/lang/String;

.field final uidState:Lcom/android/server/appop/AppOpsService$UidState;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V
    .locals 1
    .param p1, "_packageName"    # Ljava/lang/String;
    .param p2, "_uidState"    # Lcom/android/server/appop/AppOpsService$UidState;

    .line 678
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 676
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Ops;->knownAttributionTags:Landroid/util/ArraySet;

    .line 679
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    .line 680
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 681
    return-void
.end method
