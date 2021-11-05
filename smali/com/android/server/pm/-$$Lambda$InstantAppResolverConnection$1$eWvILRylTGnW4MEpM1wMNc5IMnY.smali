.class public final synthetic Lcom/android/server/pm/-$$Lambda$InstantAppResolverConnection$1$eWvILRylTGnW4MEpM1wMNc5IMnY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;Ljava/util/ArrayList;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$InstantAppResolverConnection$1$eWvILRylTGnW4MEpM1wMNc5IMnY;->f$0:Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$InstantAppResolverConnection$1$eWvILRylTGnW4MEpM1wMNc5IMnY;->f$1:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/android/server/pm/-$$Lambda$InstantAppResolverConnection$1$eWvILRylTGnW4MEpM1wMNc5IMnY;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$InstantAppResolverConnection$1$eWvILRylTGnW4MEpM1wMNc5IMnY;->f$0:Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$InstantAppResolverConnection$1$eWvILRylTGnW4MEpM1wMNc5IMnY;->f$1:Ljava/util/ArrayList;

    iget-wide v2, p0, Lcom/android/server/pm/-$$Lambda$InstantAppResolverConnection$1$eWvILRylTGnW4MEpM1wMNc5IMnY;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/InstantAppResolverConnection$1;->lambda$sendResult$0(Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;Ljava/util/ArrayList;J)V

    return-void
.end method
