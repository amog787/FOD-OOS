.class Lcom/android/server/pm/PackageManagerService$InstallRequest;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstallRequest"
.end annotation


# instance fields
.field public final args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field public final installResult:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    .locals 0
    .param p1, "args"    # Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .param p2, "res"    # Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    .line 16935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16936
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallRequest;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 16937
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallRequest;->installResult:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    .line 16938
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .param p2, "x1"    # Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    .param p3, "x2"    # Lcom/android/server/pm/PackageManagerService$1;

    .line 16931
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$InstallRequest;-><init>(Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    return-void
.end method
