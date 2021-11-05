.class public Lcom/android/server/display/utils/Plog$SystemPlog;
.super Lcom/android/server/display/utils/Plog;
.source "Plog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/utils/Plog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemPlog"
.end annotation


# instance fields
.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .line 128
    invoke-direct {p0}, Lcom/android/server/display/utils/Plog;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/android/server/display/utils/Plog$SystemPlog;->mTag:Ljava/lang/String;

    .line 130
    return-void
.end method


# virtual methods
.method protected emit(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/android/server/display/utils/Plog$SystemPlog;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method
