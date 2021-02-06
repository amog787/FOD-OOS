.class public final synthetic Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$i8pCn3vFy03m7u0vRgPEFDJBRZ8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$i8pCn3vFy03m7u0vRgPEFDJBRZ8;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$i8pCn3vFy03m7u0vRgPEFDJBRZ8;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$i8pCn3vFy03m7u0vRgPEFDJBRZ8;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$i8pCn3vFy03m7u0vRgPEFDJBRZ8;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$isCrossProfilePackageWhitelisted$0$CrossProfileAppsServiceImpl(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
