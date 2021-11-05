.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$NOhDFtf63kwSrt001pe3Z5eI1EM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/content/om/OverlayConfig$PackageProvider;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$NOhDFtf63kwSrt001pe3Z5eI1EM;->f$0:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method


# virtual methods
.method public final forEachPackage(Ljava/util/function/BiConsumer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$NOhDFtf63kwSrt001pe3Z5eI1EM;->f$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$new$8$PackageManagerService(Ljava/util/function/BiConsumer;)V

    return-void
.end method
