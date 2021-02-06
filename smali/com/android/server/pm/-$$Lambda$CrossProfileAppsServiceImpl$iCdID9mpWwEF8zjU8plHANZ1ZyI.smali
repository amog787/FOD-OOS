.class public final synthetic Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$iCdID9mpWwEF8zjU8plHANZ1ZyI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$iCdID9mpWwEF8zjU8plHANZ1ZyI;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    iput p2, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$iCdID9mpWwEF8zjU8plHANZ1ZyI;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$iCdID9mpWwEF8zjU8plHANZ1ZyI;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    iget v1, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$iCdID9mpWwEF8zjU8plHANZ1ZyI;->f$1:I

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$clearInteractAcrossProfilesAppOps$10$CrossProfileAppsServiceImpl(ILjava/lang/String;)V

    return-void
.end method
