.class public Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncreasingTimeOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/AlarmManagerService$Alarm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$Alarm;)I
    .locals 5
    .param p1, "a1"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "a2"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 3888
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 3889
    .local v0, "when1":J
    iget-wide v2, p2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 3890
    .local v2, "when2":J
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3891
    const/4 v4, 0x1

    return v4

    .line 3893
    :cond_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 3894
    const/4 v4, -0x1

    return v4

    .line 3896
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 3886
    check-cast p1, Lcom/android/server/AlarmManagerService$Alarm;

    check-cast p2, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;->compare(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result p1

    return p1
.end method
