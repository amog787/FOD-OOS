.class public Lcom/android/timezone/distro/DistroVersion;
.super Ljava/lang/Object;
.source "DistroVersion.java"


# static fields
.field public static final DISTRO_VERSION_FILE_LENGTH:I

.field private static final DISTRO_VERSION_PATTERN:Ljava/util/regex/Pattern;

.field private static final FORMAT_VERSION_PATTERN:Ljava/util/regex/Pattern;

.field private static final FORMAT_VERSION_STRING_LENGTH:I

.field private static final REVISION_LENGTH:I = 0x3

.field private static final REVISION_PATTERN:Ljava/util/regex/Pattern;

.field private static final RULES_VERSION_LENGTH:I = 0x5

.field private static final RULES_VERSION_PATTERN:Ljava/util/regex/Pattern;

.field private static final SAMPLE_FORMAT_VERSION_STRING:Ljava/lang/String;


# instance fields
.field public final formatMajorVersion:I

.field public final formatMinorVersion:I

.field public final revision:I

.field public final rulesVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    const/4 v0, 0x1

    invoke-static {v0, v0}, Lcom/android/timezone/distro/DistroVersion;->toFormatVersionString(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/timezone/distro/DistroVersion;->SAMPLE_FORMAT_VERSION_STRING:Ljava/lang/String;

    .line 32
    nop

    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sput v1, Lcom/android/timezone/distro/DistroVersion;->FORMAT_VERSION_STRING_LENGTH:I

    .line 34
    const-string v1, "(\\d{3})\\.(\\d{3})"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/timezone/distro/DistroVersion;->FORMAT_VERSION_PATTERN:Ljava/util/regex/Pattern;

    .line 37
    const-string v1, "(\\d{4}\\w)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/timezone/distro/DistroVersion;->RULES_VERSION_PATTERN:Ljava/util/regex/Pattern;

    .line 42
    const-string v1, "(\\d{3})"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/timezone/distro/DistroVersion;->REVISION_PATTERN:Ljava/util/regex/Pattern;

    .line 50
    sget v1, Lcom/android/timezone/distro/DistroVersion;->FORMAT_VERSION_STRING_LENGTH:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x5

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x3

    sput v1, Lcom/android/timezone/distro/DistroVersion;->DISTRO_VERSION_FILE_LENGTH:I

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/timezone/distro/DistroVersion;->FORMAT_VERSION_PATTERN:Ljava/util/regex/Pattern;

    .line 55
    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/timezone/distro/DistroVersion;->RULES_VERSION_PATTERN:Ljava/util/regex/Pattern;

    .line 56
    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/timezone/distro/DistroVersion;->REVISION_PATTERN:Ljava/util/regex/Pattern;

    .line 57
    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/timezone/distro/DistroVersion;->DISTRO_VERSION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 3
    .param p1, "formatMajorVersion"    # I
    .param p2, "formatMinorVersion"    # I
    .param p3, "rulesVersion"    # Ljava/lang/String;
    .param p4, "revision"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p1}, Lcom/android/timezone/distro/DistroVersion;->validate3DigitVersion(I)I

    move-result v0

    iput v0, p0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    .line 68
    invoke-static {p2}, Lcom/android/timezone/distro/DistroVersion;->validate3DigitVersion(I)I

    move-result v0

    iput v0, p0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    .line 69
    sget-object v0, Lcom/android/timezone/distro/DistroVersion;->RULES_VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iput-object p3, p0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    .line 73
    invoke-static {p4}, Lcom/android/timezone/distro/DistroVersion;->validate3DigitVersion(I)I

    move-result v0

    iput v0, p0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    .line 74
    return-void

    .line 70
    :cond_0
    new-instance v0, Lcom/android/timezone/distro/DistroException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rulesVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static from3DigitVersionString(Ljava/lang/String;)I
    .locals 4
    .param p0, "versionString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;
        }
    .end annotation

    .line 168
    const-string v0, "versionString must be a zero padded, 3 digit, positive decimal integer"

    .line 170
    .local v0, "parseErrorMessage":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "versionString must be a zero padded, 3 digit, positive decimal integer"

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 174
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 175
    .local v1, "version":I
    invoke-static {v1}, Lcom/android/timezone/distro/DistroVersion;->validate3DigitVersion(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 176
    .end local v1    # "version":I
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/android/timezone/distro/DistroException;

    invoke-direct {v3, v2, v1}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 171
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    new-instance v1, Lcom/android/timezone/distro/DistroException;

    invoke-direct {v1, v2}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static fromBytes([B)Lcom/android/timezone/distro/DistroVersion;
    .locals 11
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;
        }
    .end annotation

    .line 77
    const-string v0, "\""

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 79
    .local v1, "distroVersion":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/android/timezone/distro/DistroVersion;->DISTRO_VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 80
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "formatMajorVersion":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "formatMinorVersion":Ljava/lang/String;
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "rulesVersion":Ljava/lang/String;
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "revision":Ljava/lang/String;
    new-instance v7, Lcom/android/timezone/distro/DistroVersion;

    .line 89
    invoke-static {v3}, Lcom/android/timezone/distro/DistroVersion;->from3DigitVersionString(Ljava/lang/String;)I

    move-result v8

    .line 90
    invoke-static {v4}, Lcom/android/timezone/distro/DistroVersion;->from3DigitVersionString(Ljava/lang/String;)I

    move-result v9

    .line 92
    invoke-static {v6}, Lcom/android/timezone/distro/DistroVersion;->from3DigitVersionString(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v7, v8, v9, v5, v10}, Lcom/android/timezone/distro/DistroVersion;-><init>(IILjava/lang/String;I)V

    .line 88
    return-object v7

    .line 81
    .end local v3    # "formatMajorVersion":Ljava/lang/String;
    .end local v4    # "formatMinorVersion":Ljava/lang/String;
    .end local v5    # "rulesVersion":Ljava/lang/String;
    .end local v6    # "revision":Ljava/lang/String;
    :cond_0
    new-instance v3, Lcom/android/timezone/distro/DistroException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid distro version string: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    .end local v1    # "distroVersion":Ljava/lang/String;
    .end local p0    # "bytes":[B
    throw v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .restart local v1    # "distroVersion":Ljava/lang/String;
    .restart local p0    # "bytes":[B
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Lcom/android/timezone/distro/DistroException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Distro version string too short: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static to3DigitVersionString(I)Ljava/lang/String;
    .locals 5
    .param p0, "version"    # I

    .line 158
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "%03d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/android/timezone/distro/DistroVersion;->validate3DigitVersion(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/timezone/distro/DistroException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Lcom/android/timezone/distro/DistroException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toBytes(IILjava/lang/String;I)[B
    .locals 2
    .param p0, "majorFormatVersion"    # I
    .param p1, "minorFormatVerison"    # I
    .param p2, "rulesVersion"    # Ljava/lang/String;
    .param p3, "revision"    # I

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/android/timezone/distro/DistroVersion;->toFormatVersionString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {p3}, Lcom/android/timezone/distro/DistroVersion;->to3DigitVersionString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 106
    return-object v0
.end method

.method private static toFormatVersionString(II)Ljava/lang/String;
    .locals 2
    .param p0, "majorFormatVersion"    # I
    .param p1, "minorFormatVersion"    # I

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/timezone/distro/DistroVersion;->to3DigitVersionString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-static {p1}, Lcom/android/timezone/distro/DistroVersion;->to3DigitVersionString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    return-object v0
.end method

.method private static validate3DigitVersion(I)I
    .locals 3
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;
        }
    .end annotation

    .line 183
    if-ltz p0, :cond_0

    const/16 v0, 0x3e7

    if-gt p0, v0, :cond_0

    .line 186
    return p0

    .line 184
    :cond_0
    new-instance v0, Lcom/android/timezone/distro/DistroException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected 0 <= value <= 999, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 113
    if-ne p0, p1, :cond_0

    .line 114
    const/4 v0, 0x1

    return v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 120
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/timezone/distro/DistroVersion;

    .line 122
    .local v1, "that":Lcom/android/timezone/distro/DistroVersion;
    iget v2, p0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    iget v3, v1, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    if-eq v2, v3, :cond_2

    .line 123
    return v0

    .line 125
    :cond_2
    iget v2, p0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    iget v3, v1, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    if-eq v2, v3, :cond_3

    .line 126
    return v0

    .line 128
    :cond_3
    iget v2, p0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    iget v3, v1, Lcom/android/timezone/distro/DistroVersion;->revision:I

    if-eq v2, v3, :cond_4

    .line 129
    return v0

    .line 131
    :cond_4
    iget-object v0, p0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 117
    .end local v1    # "that":Lcom/android/timezone/distro/DistroVersion;
    :cond_5
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 136
    iget v0, p0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    .line 137
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    add-int/2addr v1, v2

    .line 138
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 139
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    add-int/2addr v1, v2

    .line 140
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toBytes()[B
    .locals 4

    .line 100
    iget v0, p0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    iget-object v2, p0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    iget v3, p0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/timezone/distro/DistroVersion;->toBytes(IILjava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DistroVersion{formatMajorVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", formatMinorVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rulesVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", revision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
