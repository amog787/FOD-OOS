.class public final synthetic Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$0Ehy54esDzebqEX4vSnU4OTdHQk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Landroid/content/Intent;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$0Ehy54esDzebqEX4vSnU4OTdHQk;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$0Ehy54esDzebqEX4vSnU4OTdHQk;->f$1:Landroid/content/Intent;

    iput p3, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$0Ehy54esDzebqEX4vSnU4OTdHQk;->f$2:I

    iput p4, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$0Ehy54esDzebqEX4vSnU4OTdHQk;->f$3:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$0Ehy54esDzebqEX4vSnU4OTdHQk;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$0Ehy54esDzebqEX4vSnU4OTdHQk;->f$1:Landroid/content/Intent;

    iget v2, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$0Ehy54esDzebqEX4vSnU4OTdHQk;->f$2:I

    iget v3, p0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$0Ehy54esDzebqEX4vSnU4OTdHQk;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$verifyActivityCanHandleIntent$4$CrossProfileAppsServiceImpl(Landroid/content/Intent;II)V

    return-void
.end method
