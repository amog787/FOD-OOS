.class public final synthetic Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$W6cmC5S7q8PE8b0EVkhmtq131dY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$W6cmC5S7q8PE8b0EVkhmtq131dY;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    iput p2, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$W6cmC5S7q8PE8b0EVkhmtq131dY;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$W6cmC5S7q8PE8b0EVkhmtq131dY;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$W6cmC5S7q8PE8b0EVkhmtq131dY;->f$3:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$W6cmC5S7q8PE8b0EVkhmtq131dY;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    iget v1, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$W6cmC5S7q8PE8b0EVkhmtq131dY;->f$1:I

    iget-object v2, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$W6cmC5S7q8PE8b0EVkhmtq131dY;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$W6cmC5S7q8PE8b0EVkhmtq131dY;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$setInteractAcrossProfilesAppOpForUserOrThrow$7$CrossProfileAppsServiceImpl(ILjava/lang/String;I)V

    return-void
.end method
