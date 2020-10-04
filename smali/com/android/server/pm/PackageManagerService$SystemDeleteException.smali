.class Lcom/android/server/pm/PackageManagerService$SystemDeleteException;
.super Ljava/lang/Exception;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemDeleteException"
.end annotation


# instance fields
.field public final reason:Lcom/android/server/pm/PackageManagerException;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerException;)V
    .locals 0
    .param p1, "reason"    # Lcom/android/server/pm/PackageManagerException;

    .line 20242
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 20243
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$SystemDeleteException;->reason:Lcom/android/server/pm/PackageManagerException;

    .line 20244
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerException;Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/PackageManagerException;
    .param p2, "x1"    # Lcom/android/server/pm/PackageManagerService$1;

    .line 20239
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$SystemDeleteException;-><init>(Lcom/android/server/pm/PackageManagerException;)V

    return-void
.end method
