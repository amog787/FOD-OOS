.class public final Lcom/android/server/am/HostingRecord;
.super Ljava/lang/Object;
.source "HostingRecord.java"


# static fields
.field private static final APP_ZYGOTE:I = 0x2

.field private static final REGULAR_ZYGOTE:I = 0x0

.field private static final WEBVIEW_ZYGOTE:I = 0x1


# instance fields
.field private final mDefiningPackageName:Ljava/lang/String;

.field private final mDefiningUid:I

.field private final mHostingName:Ljava/lang/String;

.field private final mHostingType:Ljava/lang/String;

.field private final mHostingZygote:I

.field private final mIsTopApp:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "hostingType"    # Ljava/lang/String;

    .line 61
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "hostingType"    # Ljava/lang/String;
    .param p2, "hostingName"    # Landroid/content/ComponentName;

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;I)V

    .line 67
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;I)V
    .locals 1
    .param p1, "hostingType"    # Ljava/lang/String;
    .param p2, "hostingName"    # Landroid/content/ComponentName;
    .param p3, "hostingZygote"    # I

    .line 79
    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Z)V
    .locals 7
    .param p1, "hostingType"    # Ljava/lang/String;
    .param p2, "hostingName"    # Landroid/content/ComponentName;
    .param p3, "isTopApp"    # Z

    .line 70
    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "hostingType"    # Ljava/lang/String;
    .param p2, "hostingName"    # Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "hostingType"    # Ljava/lang/String;
    .param p2, "hostingName"    # Ljava/lang/String;
    .param p3, "hostingZygote"    # I

    .line 83
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 85
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V
    .locals 0
    .param p1, "hostingType"    # Ljava/lang/String;
    .param p2, "hostingName"    # Ljava/lang/String;
    .param p3, "hostingZygote"    # I
    .param p4, "definingPackageName"    # Ljava/lang/String;
    .param p5, "definingUid"    # I
    .param p6, "isTopApp"    # Z

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/android/server/am/HostingRecord;->mHostingName:Ljava/lang/String;

    .line 91
    iput p3, p0, Lcom/android/server/am/HostingRecord;->mHostingZygote:I

    .line 92
    iput-object p4, p0, Lcom/android/server/am/HostingRecord;->mDefiningPackageName:Ljava/lang/String;

    .line 93
    iput p5, p0, Lcom/android/server/am/HostingRecord;->mDefiningUid:I

    .line 94
    iput-boolean p6, p0, Lcom/android/server/am/HostingRecord;->mIsTopApp:Z

    .line 95
    return-void
.end method

.method public static byAppZygote(Landroid/content/ComponentName;Ljava/lang/String;I)Lcom/android/server/am/HostingRecord;
    .locals 8
    .param p0, "hostingName"    # Landroid/content/ComponentName;
    .param p1, "definingPackageName"    # Ljava/lang/String;
    .param p2, "definingUid"    # I

    .line 147
    new-instance v7, Lcom/android/server/am/HostingRecord;

    invoke-virtual {p0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    const-string v1, ""

    const/4 v3, 0x2

    const/4 v6, 0x0

    move-object v0, v7

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V

    return-object v7
.end method

.method public static byWebviewZygote(Landroid/content/ComponentName;)Lcom/android/server/am/HostingRecord;
    .locals 4
    .param p0, "hostingName"    # Landroid/content/ComponentName;

    .line 135
    new-instance v0, Lcom/android/server/am/HostingRecord;

    invoke-virtual {p0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public getDefiningPackageName()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/server/am/HostingRecord;->mDefiningPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getDefiningUid()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/android/server/am/HostingRecord;->mDefiningUid:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/server/am/HostingRecord;->mHostingName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    return-object v0
.end method

.method public isTopApp()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/android/server/am/HostingRecord;->mIsTopApp:Z

    return v0
.end method

.method public usesAppZygote()Z
    .locals 2

    .line 155
    iget v0, p0, Lcom/android/server/am/HostingRecord;->mHostingZygote:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public usesWebviewZygote()Z
    .locals 2

    .line 162
    iget v0, p0, Lcom/android/server/am/HostingRecord;->mHostingZygote:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
