.class public final synthetic Lcom/android/server/people/data/-$$Lambda$DataManager$UsageStatsQueryRunnable$XYAxcpC9us0TDcNCO-NIcs5ajqQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$UsageStatsQueryRunnable$XYAxcpC9us0TDcNCO-NIcs5ajqQ;->f$0:Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;

    iput p2, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$UsageStatsQueryRunnable$XYAxcpC9us0TDcNCO-NIcs5ajqQ;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$UsageStatsQueryRunnable$XYAxcpC9us0TDcNCO-NIcs5ajqQ;->f$0:Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;

    iget v1, p0, Lcom/android/server/people/data/-$$Lambda$DataManager$UsageStatsQueryRunnable$XYAxcpC9us0TDcNCO-NIcs5ajqQ;->f$1:I

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->lambda$new$0$DataManager$UsageStatsQueryRunnable(ILjava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object p1

    return-object p1
.end method
