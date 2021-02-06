.class public final synthetic Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$HQp2BeBy_esshdSMayqT2rKlavg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$HQp2BeBy_esshdSMayqT2rKlavg;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    iput p2, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$HQp2BeBy_esshdSMayqT2rKlavg;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$HQp2BeBy_esshdSMayqT2rKlavg;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$HQp2BeBy_esshdSMayqT2rKlavg;->f$3:I

    iput-object p5, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$HQp2BeBy_esshdSMayqT2rKlavg;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$HQp2BeBy_esshdSMayqT2rKlavg;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    iget v1, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$HQp2BeBy_esshdSMayqT2rKlavg;->f$1:I

    iget-object v2, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$HQp2BeBy_esshdSMayqT2rKlavg;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$HQp2BeBy_esshdSMayqT2rKlavg;->f$3:I

    iget-object v4, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$HQp2BeBy_esshdSMayqT2rKlavg;->f$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$currentModeEquals$8$CrossProfileAppsServiceImpl(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
