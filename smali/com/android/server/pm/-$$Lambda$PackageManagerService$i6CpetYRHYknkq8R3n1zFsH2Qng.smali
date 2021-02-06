.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$i6CpetYRHYknkq8R3n1zFsH2Qng;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/pm/PackageManagerService$Injector$Producer;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$i6CpetYRHYknkq8R3n1zFsH2Qng;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$i6CpetYRHYknkq8R3n1zFsH2Qng;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final produce(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$i6CpetYRHYknkq8R3n1zFsH2Qng;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$i6CpetYRHYknkq8R3n1zFsH2Qng;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$main$1(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object p1

    return-object p1
.end method
