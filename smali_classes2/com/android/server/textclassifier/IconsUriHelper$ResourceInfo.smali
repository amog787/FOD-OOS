.class public final Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;
.super Ljava/lang/Object;
.source "IconsUriHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/IconsUriHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourceInfo"
.end annotation


# instance fields
.field public final id:I

.field public final packageName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;->packageName:Ljava/lang/String;

    .line 141
    iput p2, p0, Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;->id:I

    .line 142
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/server/textclassifier/IconsUriHelper$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/server/textclassifier/IconsUriHelper$1;

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;-><init>(Ljava/lang/String;I)V

    return-void
.end method
