.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$ECakc05vOVsUm8ydpi2Z-HghH4w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$ECakc05vOVsUm8ydpi2Z-HghH4w;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$ECakc05vOVsUm8ydpi2Z-HghH4w;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$ECakc05vOVsUm8ydpi2Z-HghH4w;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$ECakc05vOVsUm8ydpi2Z-HghH4w;->f$3:I

    iput p5, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$ECakc05vOVsUm8ydpi2Z-HghH4w;->f$4:I

    iput-object p6, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$ECakc05vOVsUm8ydpi2Z-HghH4w;->f$5:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$ECakc05vOVsUm8ydpi2Z-HghH4w;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$ECakc05vOVsUm8ydpi2Z-HghH4w;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$ECakc05vOVsUm8ydpi2Z-HghH4w;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$ECakc05vOVsUm8ydpi2Z-HghH4w;->f$3:I

    iget v4, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$ECakc05vOVsUm8ydpi2Z-HghH4w;->f$4:I

    iget-object v5, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$ECakc05vOVsUm8ydpi2Z-HghH4w;->f$5:Landroid/os/UserHandle;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->lambda$movePackage$41$PackageManagerService(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    return-void
.end method
