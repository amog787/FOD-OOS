.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$yXdgY7SVZQWnWWIG0iO_OYKuh58;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$1:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

.field public final synthetic f$2:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$yXdgY7SVZQWnWWIG0iO_OYKuh58;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$yXdgY7SVZQWnWWIG0iO_OYKuh58;->f$1:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iput-object p3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$yXdgY7SVZQWnWWIG0iO_OYKuh58;->f$2:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iput-object p4, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$yXdgY7SVZQWnWWIG0iO_OYKuh58;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$yXdgY7SVZQWnWWIG0iO_OYKuh58;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$yXdgY7SVZQWnWWIG0iO_OYKuh58;->f$1:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$yXdgY7SVZQWnWWIG0iO_OYKuh58;->f$2:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$yXdgY7SVZQWnWWIG0iO_OYKuh58;->f$3:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->lambda$commitPackageSettings$16$PackageManagerService(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/ArrayList;)V

    return-void
.end method
