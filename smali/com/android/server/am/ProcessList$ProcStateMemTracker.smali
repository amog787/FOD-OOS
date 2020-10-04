.class public final Lcom/android/server/am/ProcessList$ProcStateMemTracker;
.super Ljava/lang/Object;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcStateMemTracker"
.end annotation


# instance fields
.field final mHighestMem:[I

.field mPendingHighestMemState:I

.field mPendingMemState:I

.field mPendingScalingFactor:F

.field final mScalingFactor:[F

.field mTotalHighestMem:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1060
    const/4 v0, 0x5

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    .line 1061
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    .line 1062
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 1069
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1070
    iget-object v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aput v0, v2, v1

    .line 1071
    iget-object v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v1

    .line 1069
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1073
    .end local v1    # "i":I
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 1074
    return-void
.end method


# virtual methods
.method public dumpLine(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1077
    const-string v0, "best="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1078
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1079
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1080
    const/4 v0, 0x0

    .line 1081
    .local v0, "needSep":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const-string/jumbo v2, "x"

    const-string v3, " "

    const/4 v4, 0x5

    if-ge v1, v4, :cond_2

    .line 1082
    iget-object v5, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aget v5, v5, v1

    if-ge v5, v4, :cond_1

    .line 1083
    if-eqz v0, :cond_0

    .line 1084
    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1085
    const/4 v0, 0x0

    .line 1087
    :cond_0
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1088
    const-string v4, "="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1089
    iget-object v4, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aget v4, v4, v1

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1090
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1091
    iget-object v3, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    aget v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 1092
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1093
    const/4 v0, 0x1

    .line 1081
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1096
    .end local v1    # "i":I
    :cond_2
    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1097
    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    if-ltz v1, :cond_3

    .line 1098
    const-string v1, " / pending state="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1099
    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1100
    const-string v1, " highest="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1101
    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1102
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1103
    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 1104
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1106
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1107
    return-void
.end method
