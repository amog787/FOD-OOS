.class public final synthetic Lcom/android/server/-$$Lambda$LocationManagerService$bojY6dMaI07zh6_sF7ERxgmk6U0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackagesProvider;


# instance fields
.field private final synthetic f$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$LocationManagerService$bojY6dMaI07zh6_sF7ERxgmk6U0;->f$0:Lcom/android/server/LocationManagerService;

    return-void
.end method


# virtual methods
.method public final getPackages(I)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$LocationManagerService$bojY6dMaI07zh6_sF7ERxgmk6U0;->f$0:Lcom/android/server/LocationManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/LocationManagerService;->lambda$new$0$LocationManagerService(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
